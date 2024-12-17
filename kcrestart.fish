function kcrestart
   kubectl rollout restart deployment/$argv[1]
end
