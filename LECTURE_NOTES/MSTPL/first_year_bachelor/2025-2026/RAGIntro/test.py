from rag import RAG, SimilarityMetric
import numpy as np
import h5py

TOP_K = 5
SIZE = 10_000

def main():
    r = RAG(vec_length=10)


    for i in range(SIZE):
        v = np.random.uniform(size=10)
        r.add(vec=v)

    q = np.random.uniform(size=10)

    top = r.query(query_vec=q, top_k=TOP_K, metric=SimilarityMetric.COSINE)
    for i in range(TOP_K):
        print(top[i])

    # zero-padding
    # for i in range(n):
    #     a = np.zeros(11)
    #     vec = cost[i]
    #     a[:len(vec)] = vec



    # dataset = [] # in RAM
    # for i in range(SIZE):
    #     v = np.random.uniform(size=10)
    #     dataset.append(v)

    # with h5py.File("test.h5", "a") as d:
    #     d.create_dataset("stars", dataset, dtype=np.float32)




if __name__ == "__main__":
    main()
