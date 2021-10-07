from toil.common import Toil
from toil.job import Job


class MessageJob(Job):
    def __init__(self, message):
        Job.__init__(self,  memory="4G", cores=40, disk="3G")
        self.message = message

    def run(self, fileStore):
        for i in range(10000):
            for j in range(20000):
                asd = i + j
        return "Running a job with a message: %s" % self.message

if __name__=="__main__":
    parser = Job.Runner.getDefaultArgumentParser()
    options = parser.parse_args()
    options.logLevel = "OFF"
    options.clean = "always"
    options.batchSystem = "slurm"
    options.disableCaching = True

    test_job = MessageJob("Job execution output message.")

    with Toil(options) as toil:
        print(toil.start(test_job))
