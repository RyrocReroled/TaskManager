using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TaskReminder.Classes
{
   public class TaskEntity
    {
        public string Name { get; set; }
        public string Description { get; set; }

        public DateTime? OneTimeDate { get; set; }

        public TimeSpan? EveryDayTimeDate { get; set; }

        public List<int> WeekDays { get; set; }

        public int TaskType { get; set; }

        public List<int> NotificationIdList { get; set; }
    }
}
