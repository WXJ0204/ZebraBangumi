using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ZebraBangumi
{
    public class ProgressListener
    {
        private double value = 0;
        private readonly object asynclock = new object();

        public delegate void ValueChangedHandler(ProgressListener sender, Double value);
        public event ValueChangedHandler ValueChanged;

        public delegate void ExceptionHappenedHandler(ProgressListener sender, Exception e);
        public event ExceptionHappenedHandler ExceptionHappened;

        public double Value
        {
            get => value;
            set
            {
                lock(asynclock)
                {
                    this.value = value;
                    ValueChanged?.Invoke(this, value);
                }
            }
        }

        public void ThrowException(Exception e)
        {
            ExceptionHappened?.Invoke(this, e);
        }
    }
}
