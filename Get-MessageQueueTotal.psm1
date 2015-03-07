##########################################
# Robert D. Biddle
# Created - 02.16.2015
    <#
     
    .SYNOPSIS
    Outputs the total count of messages in Microsoft Exchange Server Queues
    Must be used in Exchange Management Shell
    #>
#
Function Get-MessageQueueTotal{
    $QueueTotal = Get-MailboxServer | Get-Queue | Select-Object MessageCount | Measure
    Write-Output "Total Queued Messages: $($QueueTotal.Count)"
    }
Export-ModuleMember -Function * -Variable *
