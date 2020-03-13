'''
Day 6: Multiple Linear Regression: Predicting House Prices

https://www.hackerrank.com/challenges/predicting-house-prices/problem

'''


from sklearn import linear_model

(F, N) = input().split()
F = int(F)
N = int(N)

features = []
prices = []

for x in range(N):
    arr = [float(a) for a in input().split()]
    features.append(arr[0 : F])
    prices.append(arr[F])

model = linear_model.LinearRegression()
model.fit(features, prices)

T = int(input())

X = [[float(a) for a in input().split()] for b in range(T)]

for y in model.predict(X):
    print(y)
