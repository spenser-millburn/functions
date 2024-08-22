function get_fault_description
set -l SCRIPT "import pandas as pd
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
print(ut.get_fault_description('$argv[1]'))
"
python -c $SCRIPT
end
