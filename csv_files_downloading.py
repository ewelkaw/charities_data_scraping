import urllib.request
import time
import glob
import os
from tqdm import tqdm

from constants import BASE_DOWNLOAD_URL, STARTING_POINT, ENDING_POINT


def get_starting_number():
    list_of_files = glob.glob("csv_data/*.csv")
    try:
        file = max(list_of_files, key=os.path.getctime)
        return int(file.split("/")[-1].split(".")[0])
    except ValueError:
        return STARTING_POINT


def download_data():
    idx = get_starting_number()
    for i in tqdm(range(idx, ENDING_POINT)):
        for attempt in range(7):
            try:
                urllib.request.urlretrieve(
                    BASE_DOWNLOAD_URL.format(i), "csv_data/{}.csv".format(i),
                )
            except urllib.error.HTTPError:
                time.sleep(attempt)
                continue
            break


if __name__ == "__main__":
    download_data()
