cd /gopath/src
export AWS_REGION=ap-southeast-1
dlv debug k8s.io/autoscaler/cluster-autoscaler -- --cloud-provider=aws --namespace=devops --node-group-auto-discovery=asg:tag=k8s.io/cluster-autoscaler/enabled,k8s.io/cluster-autoscaler/dev-k8s.oyorooms.ms --aws-use-static-instance-list=true --balance-similar-node-groups=true --expendable-pods-priority-cutoff=-10 --logtostderr=true --max-graceful-termination-sec=900 --scale-down-utilization-threshold=90 --skip-nodes-with-local-storage=false --skip-nodes-with-system-pods=false --stderrthreshold=info --v=4
