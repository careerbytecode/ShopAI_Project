# scheduler.py : simple scheduler to run ETL periodically using schedule lib
import schedule, time, subprocess

def run_etl():
    print('Running ETL...')
    subprocess.run(['python3','python/etl_shopai.py'])

schedule.every().day.at('02:00').do(run_etl)

if __name__ == '__main__':
    print('Scheduler started. Will run ETL at 02:00 daily.')
    while True:
        schedule.run_pending()
        time.sleep(30)
