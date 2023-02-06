
function Check-SPN {
    param (
        [string] $SPNID,
        [string] $ControlName, 
        [string] $ItemName, 
        [string] $itsgcode,
        [hashtable] $msgTable,
        [Parameter(Mandatory=$true)]
        [string]
        $ReportTime)
        
        $IsCompliant = $true
        $Comments=$null
        $urlPath = 'servicePrincipals/'+$SPNID

        try{

            $response = Invoke-GraphQuery -urlPath $urlPath -ErrorAction Stop

}
        catch {
            $ErrorList.Add("Failed to call Microsoft Graph REST API at URL '$urlPath'; returned error message: $_" )
            Write-Error "Error: Failed to call Microsoft Graph REST API at URL '$urlPath'; returned error message: $_"
            $IsCompliant = $false
            $Comments =  "SPN doesnt exist"# msgTable."$SPN".Comments
        }


}
function Verify-Roles{
    param {
        [string] $SPNID,
        [string[]] $BUildInRoleID 
    }
    

}
