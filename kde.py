from __future__ import division
import numpy as np

from scipy.stats import gaussian_kde
import json

with open('/mnt/data/datasets/shapenet/PASCAL3D+_release1.1/all.json', 'r') as f:
    obj = json.load(f)



def kde(x, x_grid, bandwidth=0.2, **kwargs):
    """Kernel Density Estimation with Scipy"""
    kde = gaussian_kde(x, bw_method=bandwidth / x.std(ddof=1), **kwargs)
    return kde.evaluate(x_grid)


def generate_rand_from_pdf(pdf, x_grid, count=1):
    cdf = np.cumsum(pdf)
    cdf = cdf / cdf[-1]
    values = np.random.rand(count)
    value_bins = np.searchsorted(cdf, values)
    random_from_cdf = x_grid[value_bins]
    return random_from_cdf

def rand(cat, coord, count):
    # coord = azimuth or elevation
    data = np.array(obj[cat][coord])
    x_grid = np.linspace(min(data), max(data), 1000)
    kdepdf = kde(data, x_grid, bandwidth=0.1)
    return generate_rand_from_pdf(kdepdf, x_grid, count)

if __name__ == '__main__':
    run()