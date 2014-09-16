using System.IO;

namespace SCM.Extends
{
    public class JavaScriptLoader
    {
        public static string Load(string file)
        {
            using (var stream = File.OpenText(file))
            {
                return stream.ReadToEnd();
            }
        }
    }
}