from numpy.typing import NDArray
import numpy as np
from enum import Enum

class SimilarityMetric(Enum):
    COSINE    = 0
    DOT       = 1
    EUCLIDEAN = 2


class RAG():
    def __init__(self, vec_length: int) -> None:
        self.length = vec_length
        self.store = []

        self._mean = None
        self.std = None
        self._is_fitted = False

    def add(self, vec: list | NDArray) -> None:
        if len(vec) != self.length:
            print(f"[ERROR] Vector must have size of {self.length}")
            return

        self.store.append(np.array(vec, dtype=np.float32).astype(np.float32))
        self._is_fitted = False

    def fit(self) -> None:
        if not len(self.store):
            print("[ERROR] Nothing to do. Empty vector store!")
            return

        matrix = np.stack(self.store).astype(np.float32)
        self._mean = np.mean(matrix, axis=1)
        self._std = np.std(matrix, axis=1)
        self._is_fitted = True

    def __standardize(self) -> NDArray | None:
        if not self._is_fitted:
            self.fit()
        matrix = np.stack(self.store).astype(np.float32)
        if self._mean is not None and self._std is not None:
            return (matrix - self._mean) / self._std
        return None

    def __normalize(self, vec) -> NDArray:
        norm = np.linalg.norm(vec)
        norm = norm if norm != 0.0 else 1.0
        return vec / norm

    def __get_similarity(self, q: NDArray, m: NDArray, metric: SimilarityMetric) -> NDArray:
        match metric:
            case SimilarityMetric.COSINE:
                q_normalized = self.__normalize(q)
                m_normalized = self.__normalize(m)
                return m_normalized @ q_normalized
            case SimilarityMetric.DOT:
                return m @ q
            case SimilarityMetric.EUCLIDEAN:
                matrix = self.__standardize()
                return np.abs(matrix - q).astype(np.float32)

    def query(self, query_vec: list | NDArray, top_k: int, metric: SimilarityMetric, normalize: bool = False) -> list[dict]:
        if len(query_vec) != self.length:
            print(f"[ERROR] Vector must have size of {self.length}")
            return [{}]

        query_vec = np.array(query_vec, dtype=np.float32)

        if not self._is_fitted:
            self.fit()

        matrix = np.stack(self.store)
        if normalize:
            matrix = self.__normalize(matrix)
            query_vec = self.__normalize(query_vec)

        scores = self.__get_similarity(q=query_vec, m=matrix, metric=metric)

        if top_k > matrix.shape[0]:
            top_k = matrix.shape[0]

        top_index = np.argpartition(-scores, top_k)[:top_k]
        top_index = top_index[np.argsort(-scores[top_index])]
        return [{
            "score": scores[i],
            "vector": matrix[i]
        } for i in top_index]

    def save(self): ...
    def load(self): ...
