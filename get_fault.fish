function get_fault
set -l SCRIPT "import pandas as pd
from pprint import pprint as pp
class LogTools():
    def get_fault(self,fault_id ):
        faults_json_path = '$ENVDIR/repo/alphabot/configuration/fault_monitor_config.json'
        df = pd.read_json(faults_json_path)
        df.index = df['DataCacheId']
        fault = dict(df.loc[fault_id])
        return fault

    def get_fault_description(self,fault_id):
        return self.get_fault(fault_id)['FaultDesc']
        
ut = LogTools()
pp(ut.get_fault('fault_' + '$argv[1]'))
"
python3 -c $SCRIPT
end
