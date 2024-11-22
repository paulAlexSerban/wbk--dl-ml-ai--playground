# Feature Scaling

## Normalization

- the process of taking the minimum inside a column, subtracting that from all the values in the column, and then dividing by the range of the column

```python
def normalize_column(column):
    min_val = min(column)
    max_val = max(column)
    range_val = max_val - min_val
    return [(x - min_val) / range_val for x in column]
```

## Standardization

- the process of subtracting the average of a column from all the values in the column and then dividing by the standard deviation of the column

```python
def standardize_column(column):
    avg = sum(column) / len(column)
    std_dev = (sum([(x - avg) ** 2 for x in column]) / len(column)) ** 0.5
    return [(x - avg) / std_dev for x in column]
```

## Example case

|     | salary | age |
| --- | ------ | --- |
| p0  | 70000  | 45  |
| p1  | 60000  | 44  |
| p2  | 52000  | 40  |

> Q: Which is more similar to p2, p1 or p3?

### Normalization

|     | salary | age |
| --- | ------ | --- |
| p0  | 1      | 1   |
| p1  | 0.444  | 0.8 |
| p2  | 0      | 0   |
