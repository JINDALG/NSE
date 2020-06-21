from celery.task.schedules import crontab
from celery.decorators import periodic_task
from celery.utils.log import get_task_logger

from nsestock.utils import update_shares_price, reset_max_shares_price

logger = get_task_logger(__name__)

@periodic_task(
    run_every=30,
    name="update_price",
    ignore_result=True
)
def update_price():
    """
    price updated.
    """
    update_shares_price()
    logger.info("Price updated")


# @periodic_task(
#     run_every=(crontab(minute='0 0 * * *')),
#     name="reset_max_price",
#     ignore_result=True
# )
# def reset_max_price():
#     """
#     max price updat.
#     """
#     reset_max_shares_price()
#     print "price reset"
#     logger.info("Price updated")

