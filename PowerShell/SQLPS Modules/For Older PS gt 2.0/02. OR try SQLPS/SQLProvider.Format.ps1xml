<?xml version="1.0" encoding="utf-8" ?>
<!-- *******************************************************************
Copyright (c) Microsoft Corporation.  All rights reserved.
******************************************************************** -->

<Configuration>


  <SelectionSets>
    <SelectionSet>
      <Name>RegisteredServerTypes</Name>
      <Types>
        <TypeName>Microsoft.SqlServer.Management.RegisteredServers.ServerGroup</TypeName>
        <TypeName>Microsoft.SqlServer.Management.RegisteredServers.RegisteredServer</TypeName>
      </Types>
    </SelectionSet>
  </SelectionSets>

  <!-- ################ GLOBAL CONTROL DEFINITIONS ################ -->
  <Controls>
    <Control>
      <Name>RegisteredServerTypes-GroupingFormat</Name>
      <CustomControl>
        <CustomEntries>
          <CustomEntry>
            <CustomItem>
              <Frame>
                <LeftIndent>4</LeftIndent>
                <CustomItem>
                  <Text>Directory: </Text>
                  <ExpressionBinding>
                    <ScriptBlock>$_.PSParentPath</ScriptBlock>
                  </ExpressionBinding>
                  <NewLine/>
                </CustomItem>
              </Frame>
            </CustomItem>
          </CustomEntry>
        </CustomEntries>
      </CustomControl>
    </Control>
  </Controls>



  <ViewDefinitions>

    <!-- SMO -->

    <View>
      <Name>Server</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.Smo.Server</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>Instance Name</Label>
            <Width>80</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>DisplayName</PropertyName>
              </TableColumnItem>

            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

	  <View>
		  <Name>Database</Name>
		  <ViewSelectedBy>
			  <TypeName>Microsoft.SqlServer.Management.Smo.Database</TypeName>
		  </ViewSelectedBy>
		  <TableControl>
			  <TableHeaders>

				  <TableColumnHeader>
					  <Label>Name</Label>
					  <Width>20</Width>
					  <Alignment>left</Alignment>
				  </TableColumnHeader>

				  <TableColumnHeader>
					  <Label>Status</Label>
					  <Width>15</Width>
					  <Alignment>left</Alignment>
				  </TableColumnHeader>

				  <TableColumnHeader>
					  <Label>Containment Type</Label>
					  <Width>16</Width>
					  <Alignment>left</Alignment>
				  </TableColumnHeader>

				  <TableColumnHeader>
					  <Label>Recovery Model</Label>
					  <Width>14</Width>
					  <Alignment>left</Alignment>
				  </TableColumnHeader>

				  <TableColumnHeader>
					  <Label>CompatLvl</Label>
					  <Width>9</Width>
					  <Alignment>right</Alignment>
				  </TableColumnHeader>

				  <TableColumnHeader>
					  <Label>Collation</Label>
					  <Width>30</Width>
					  <Alignment>left</Alignment>
				  </TableColumnHeader>

				  <TableColumnHeader>
					  <Label>Owner</Label>
					  <Width>25</Width>
					  <Alignment>left</Alignment>
				  </TableColumnHeader>

			  </TableHeaders>
			  <TableRowEntries>
				  <TableRowEntry>
					  <Wrap/>
					  <TableColumnItems>

						  <TableColumnItem>
							  <PropertyName>Name</PropertyName>
						  </TableColumnItem>

						  <TableColumnItem>
							  <PropertyName>Status</PropertyName>
						  </TableColumnItem>

						  <TableColumnItem>
							  <PropertyName>ContainmentType</PropertyName>
						  </TableColumnItem>

						  <TableColumnItem>
							  <PropertyName>RecoveryModel</PropertyName>
						  </TableColumnItem>

						  <TableColumnItem>
							  <ScriptBlock>
								  [int] $_.CompatibilityLevel
							  </ScriptBlock>
						  </TableColumnItem>

						  <TableColumnItem>
							  <PropertyName>Collation</PropertyName>
						  </TableColumnItem>

						  <TableColumnItem>
							  <PropertyName>Owner</PropertyName>
						  </TableColumnItem>

					  </TableColumnItems>
				  </TableRowEntry>
			  </TableRowEntries>
		  </TableControl>
	  </View>

    <View>
      <Name>Table</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.Smo.Table</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>Schema</Label>
            <Width>28</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Name</Label>
            <Width>30</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Created</Label>
            <Width>22</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <Wrap/>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>Schema</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <ScriptBlock>$_.CreateDate.ToString("g")</ScriptBlock>
              </TableColumnItem>

            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>View</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.Smo.View</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>Schema</Label>
            <Width>28</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Name</Label>
            <Width>30</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Created</Label>
            <Width>22</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <Wrap/>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>Schema</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <ScriptBlock>$_.CreateDate.ToString("g")</ScriptBlock>
              </TableColumnItem>

            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>StoredProcedure</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.Smo.StoredProcedure</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>Schema</Label>
            <Width>28</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Name</Label>
            <Width>30</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Created</Label>
            <Width>22</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <Wrap/>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>Schema</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <ScriptBlock>$_.CreateDate.ToString("g")</ScriptBlock>
              </TableColumnItem>

            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>User</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.Smo.User</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>Name</Label>
            <Width>30</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Login</Label>
            <Width>28</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Created</Label>
            <Width>22</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <Wrap/>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Login</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <ScriptBlock>$_.CreateDate.ToString("g")</ScriptBlock>
              </TableColumnItem>

            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>Login</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.Smo.Login</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>Name</Label>
            <Width>45</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Login Type</Label>
            <Width>13</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Created</Label>
            <Width>22</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <Wrap/>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>LoginType</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <ScriptBlock>$_.CreateDate.ToString("g")</ScriptBlock>
              </TableColumnItem>

            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>ServerRole</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.Smo.ServerRole</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>Name</Label>
            <Width>25</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Fixed Role</Label>
            <Width>11</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Created</Label>
            <Width>22</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Owner</Label>
            <Width>25</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Modified</Label>
            <Width>22</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <Wrap/>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>IsFixedRole</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <ScriptBlock>$_.DateCreated.ToString("g")</ScriptBlock>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Owner</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <ScriptBlock>$_.DateModified.ToString("g")</ScriptBlock>
              </TableColumnItem>

            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>


    <View>
      <Name>Sequence</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.Smo.Sequence</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>Schema</Label>
            <Width>28</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Name</Label>
            <Width>25</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>CurrentValue</Label>
            <Width>25</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>
        
          <TableColumnHeader>
            <Label>IsExhausted</Label>
            <Width>22</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>
          
          <TableColumnHeader>
            <Label>Created</Label>
            <Width>22</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Owner</Label>
            <Width>25</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Modified</Label>
            <Width>22</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <Wrap/>
            <TableColumnItems>


              <TableColumnItem>
                <PropertyName>Schema</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>CurrentValue</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>IsExhausted</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <ScriptBlock>$_.CreateDate.ToString("g")</ScriptBlock>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Owner</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <ScriptBlock>$_.DateLastModified.ToString("g")</ScriptBlock>
              </TableColumnItem>

            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>
<!--end sequence-->

    <View>
      <Name>Schema</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.Smo.Schema</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>Name</Label>
            <Width>30</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Owner</Label>
            <Width>28</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <Wrap/>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Owner</PropertyName>
              </TableColumnItem>

            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>Index</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.Smo.Index</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>Name</Label>
            <Width>80</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <Wrap/>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>

            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>Trigger</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.Smo.Trigger</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>Name</Label>
            <Width>30</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Created</Label>
            <Width>22</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <Wrap/>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <ScriptBlock>$_.CreateDate.ToString("g")</ScriptBlock>
              </TableColumnItem>

            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>UserDefinedFunction</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.Smo.UserDefinedFunction</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>Schema</Label>
            <Width>28</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Name</Label>
            <Width>30</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Created</Label>
            <Width>22</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <Wrap/>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>Schema</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <ScriptBlock>$_.CreateDate.ToString("g")</ScriptBlock>
              </TableColumnItem>

            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>


    <View>
      <Name>SystemMessage</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.Smo.SystemMessage</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>ID</Label>
            <Width>5</Width>
            <Alignment>right</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Language</Label>
            <Width>15</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Text</Label>
            <Width>58</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <Wrap/>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>ID</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Language</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Text</PropertyName>
              </TableColumnItem>

            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>UserDefinedMessage</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.Smo.UserDefinedMessage</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>ID</Label>
            <Width>5</Width>
            <Alignment>right</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Language</Label>
            <Width>15</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Text</Label>
            <Width>58</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <Wrap/>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>ID</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Language</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Text</PropertyName>
              </TableColumnItem>

            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>


    <!-- DMF -->

    <View>
      <Name>PolicyStore</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.Dmf.PolicyStore</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>Instance Name</Label>
            <Width>80</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>DisplayName</PropertyName>
              </TableColumnItem>

            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>Policy</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.Dmf.Policy</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>Name</Label>
            <Width>30</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Category</Label>
            <Width>17</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Created</Label>
            <Width>22</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Enabled</Label>
            <Width>7</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>PolicyCategory</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <ScriptBlock>$_.CreateDate.ToString("g")</ScriptBlock>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Enabled</PropertyName>
              </TableColumnItem>

            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>EvaluationHistory</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.Dmf.EvaluationHistory</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>ID</Label>
            <Width>5</Width>
            <Alignment>right</Alignment>
          </TableColumnHeader>
          
          <TableColumnHeader>
            <Label>Policy Name</Label>
            <Width>30</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Result</Label>
            <Width>6</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Start Date</Label>
            <Width>18</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>End Date</Label>
            <Width>18</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Messages</Label>
            <Width>22</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <Wrap/>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>ID</PropertyName>
              </TableColumnItem>
              
              <TableColumnItem>
                <PropertyName>PolicyName</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Result</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <ScriptBlock>$_.StartDate.ToString("g")</ScriptBlock>
              </TableColumnItem>

              <TableColumnItem>
                <ScriptBlock>$_.EndDate.ToString("g")</ScriptBlock>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Exception</PropertyName>
              </TableColumnItem>

            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>ConnectionEvaluationHistory</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.Dmf.ConnectionEvaluationHistory</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>ID</Label>
            <Width>5</Width>
            <Alignment>right</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Server Instance</Label>
            <Width>30</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Result</Label>
            <Width>6</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Messages</Label>
            <Width>22</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <Wrap/>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>ID</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>ServerInstance</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Result</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Exception</PropertyName>
              </TableColumnItem>

            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    
    <View>
      <Name>EvaluationDetail</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.Dmf.EvaluationDetail</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>ID</Label>
            <Width>5</Width>
            <Alignment>right</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Result</Label>
            <Width>6</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Target Query Expression</Label>
            <Width>40</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Messages</Label>
            <Width>22</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <Wrap/>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>ID</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Result</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>TargetQueryExpression</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <ScriptBlock>Exception</ScriptBlock>
              </TableColumnItem>

            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>TargetSet</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.Dmf.TargetSet</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>ID</Label>
            <Width>5</Width>
            <Alignment>right</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Target Type</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Target Type Skeleton</Label>
            <Width>40</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Enabled</Label>
            <Width>5</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>ID</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>TargetType</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>TargetTypeSkeleton</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Enabled</PropertyName>
              </TableColumnItem>

            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    
    <View>
      <Name>TargetSetLevel</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.Dmf.TargetSetLevel</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>ID</Label>
            <Width>5</Width>
            <Alignment>right</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Condition</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Target Type Skeleton</Label>
            <Width>40</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Level Name</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>ID</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Condition</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>TargetTypeSkeleton</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>LevelName</PropertyName>
              </TableColumnItem>

            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>


    <View>
      <Name>Condition</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.Dmf.Condition</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>Name</Label>
            <Width>30</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Facet</Label>
            <Width>25</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Created</Label>
            <Width>22</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Facet</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <ScriptBlock>$_.CreateDate.ToString("g")</ScriptBlock>
              </TableColumnItem>

            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>


    <View>
      <Name>PolicyCategory</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.Dmf.PolicyCategory</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>ID</Label>
            <Width>5</Width>
            <Alignment>right</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Name</Label>
            <Width>30</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Mandate Database Subscriptions</Label>
            <Width>30</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>ID</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>MandateDatabaseSubscriptions</PropertyName>
              </TableColumnItem>

            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>PolicyCategorySubscription</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.Dmf.PolicyCategorySubscription</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>ID</Label>
            <Width>5</Width>
            <Alignment>right</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Policy Category</Label>
            <Width>23</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Target</Label>
            <Width>23</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Target Type</Label>
            <Width>23</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>


        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>ID</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>PolicyCategory</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Target</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>TargetType</PropertyName>
              </TableColumnItem>

            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>


    <View>
      <Name>ObjectSet</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.Dmf.ObjectSet</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>Name</Label>
            <Width>30</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Facet</Label>
            <Width>25</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>


        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Facet</PropertyName>
              </TableColumnItem>

            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <!-- SQL Server Registrations -->

    <View>
      <Name>children</Name>
      <ViewSelectedBy>
        <SelectionSetName>RegisteredServerTypes</SelectionSetName>
      </ViewSelectedBy>
      <GroupBy>
        <PropertyName>PSParentPath</PropertyName>
        <CustomControlName>RegisteredServerTypes-GroupingFormat</CustomControlName>
      </GroupBy>
      <TableControl>
        <TableHeaders>
          <TableColumnHeader>
            <Label>Mode</Label>
            <Width>4</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Name</Label>
            <Width>40</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <Wrap/>
            <TableColumnItems>
              <TableColumnItem>
                <PropertyName>Mode</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>DisplayName</PropertyName>
              </TableColumnItem>
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>
    <View>
      <Name>children</Name>
      <ViewSelectedBy>
        <SelectionSetName>RegisteredServerTypes</SelectionSetName>
      </ViewSelectedBy>
      <GroupBy>
        <PropertyName>PSParentPath</PropertyName>
        <CustomControlName>RegisteredServerTypes-GroupingFormat</CustomControlName>
      </GroupBy>
      <ListControl>
        <ListEntries>
          <ListEntry>
            <EntrySelectedBy>
              <TypeName>Microsoft.SqlServer.Management.RegisteredServers.ServerGroup</TypeName>
            </EntrySelectedBy>
            <ListItems>
              <ListItem>
                <PropertyName>DisplayName</PropertyName>
              </ListItem>
            </ListItems>
          </ListEntry>
          <ListEntry>
            <ListItems>
              <ListItem>
                <PropertyName>DisplayName</PropertyName>
              </ListItem>
            </ListItems>
          </ListEntry>
        </ListEntries>
      </ListControl>
    </View>

    <!-- Data Collector -->


   <View>
      <Name>CollectionSet</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.Collector.CollectionSet</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>Name</Label>
            <Width>30</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>IsRunning</Label>
            <Width>10</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Description</Label>
            <Width>36</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <Wrap/>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>IsRunning</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Description</PropertyName>
              </TableColumnItem>

            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

   <View>
      <Name>CollectionItem</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.Collector.CollectionItem</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>Name</Label>
            <Width>30</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Collector Type</Label>
            <Width>27</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Collection Frequency</Label>
            <Width>21</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>


        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>TypeName</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>CollectionFrequency</PropertyName>
              </TableColumnItem>

            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>


    <!-- SQL Server Provider Types -->

    <View>
      <Name>SqlServerProviderExtension</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.PowerShell.Extensions.SqlServerProviderExtension</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>
          <TableColumnHeader>
            <Label>Name</Label>
            <Width>15</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Root</Label>
            <Width>30</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Description</Label>
            <Width>40</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <Wrap/>
            <TableColumnItems>
              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>Root</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>Description</PropertyName>
              </TableColumnItem>
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>Machine</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.PowerShell.Extensions.Machine</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>
          <TableColumnHeader>
            <Label>MachineName</Label>
            <Width>32</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <Wrap/>
            <TableColumnItems>
              <TableColumnItem>
                <PropertyName>MachineName</PropertyName>
              </TableColumnItem>
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>


    <View>
      <Name>CollectionInfo</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.Sdk.Sfc.CollectionInfo</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>
          <TableColumnHeader>
            <Label>Name</Label>
            <Width>60</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <Wrap/>
            <TableColumnItems>
              <TableColumnItem>
                <PropertyName>DisplayName</PropertyName>
              </TableColumnItem>
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <!-- Extended Events -->
    <View>
      <Name>XEStore</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.XEvent.XEStore</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>Instance Name</Label>
            <Width>30</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Total Session Count</Label>
            <Width>30</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Running Session Count</Label>
            <Width>30</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>
              <TableColumnItem>
                <PropertyName>DisplayName</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <ScriptBlock>$_.Sessions.Count</ScriptBlock>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>RunningSessionCount</PropertyName>
              </TableColumnItem>

            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>Session</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.XEvent.Session</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>Name</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>AutoStartUp</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>IsRunning</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Start Time</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>AutoStart</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>IsRunning</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <ScriptBlock>$_.StartTime.ToString("g")</ScriptBlock>
              </TableColumnItem>

            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>Event</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.XEvent.Event</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>Name</Label>
            <Width>30</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Package Name</Label>
            <Width>30</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Predicate</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Description</Label>
            <Width>40</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>
          
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>PackageName</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>PredicateExpression</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Description</PropertyName>
              </TableColumnItem>
              
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>Target</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.XEvent.Target</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>Name</Label>
            <Width>30</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Package Name</Label>
            <Width>30</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Description</Label>
            <Width>40</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>PackageName</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Description</PropertyName>
              </TableColumnItem>

            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>EventField</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.XEvent.EventField</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>Name</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Value</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Description</Label>
            <Width>40</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>
          
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Value</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Description</PropertyName>
              </TableColumnItem>
              
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>TargetField</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.XEvent.TargetField</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>Name</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Value</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Description</Label>
            <Width>40</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>
          
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Value</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Description</PropertyName>
              </TableColumnItem>
              
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>
    
    <View>
      <Name>Action</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.XEvent.Action</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>Name</Label>
            <Width>30</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Package Name</Label>
            <Width>30</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Description</Label>
            <Width>40</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>PackageName</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Description</PropertyName>
              </TableColumnItem>

            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>
    
    <View>
      <Name>Package</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.XEvent.Package</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>Name</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>ID</Label>
            <Width>40</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>


          <TableColumnHeader>
            <Label>Module ID</Label>
            <Width>40</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>


          <TableColumnHeader>
            <Label>Description</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>
          
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>ID</PropertyName>
              </TableColumnItem>
             
              <TableColumnItem>
                <PropertyName>ModuleID</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Description</PropertyName>
              </TableColumnItem>
              
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>EventInfo</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.XEvent.EventInfo</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>Name</Label>
            <Width>40</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Capabilities</Label>
            <Width>40</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Description</Label>
            <Width>40</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>CapabilitiesDesc</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Description</PropertyName>
              </TableColumnItem>

            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>EventColumnInfo</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.XEvent.EventColumnInfo</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>Name</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Type</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Value</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Description</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>
          
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>TypeName</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Value</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Description</PropertyName>
              </TableColumnItem>
              
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>DataEventColumnInfo</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.XEvent.DataEventColumnInfo</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>Name</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Type</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Description</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>
          
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>TypeName</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Description</PropertyName>
              </TableColumnItem>
              
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>ReadOnlyEventColumnInfo</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.XEvent.ReadOnlyEventColumnInfo</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>Name</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Type</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Value</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>
          
          <TableColumnHeader>
            <Label>Description</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>
          
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>TypeName</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Value</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Description</PropertyName>
              </TableColumnItem>
              
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>ActionInfo</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.XEvent.ActionInfo</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>Action Name</Label>
            <Width>40</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Type</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Description</Label>
            <Width>40</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>
          
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>TypeName</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Description</PropertyName>
              </TableColumnItem>
              
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>TargetInfo</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.XEvent.TargetInfo</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>Name</Label>
            <Width>40</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Description</Label>
            <Width>40</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Description</PropertyName>
              </TableColumnItem>

            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>TargetColumnInfo</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.XEvent.TargetColumnInfo</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>Name</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Type</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Value</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Description</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>
          
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>TypeName</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Value</PropertyName>
              </TableColumnItem>


              <TableColumnItem>
                <PropertyName>Description</PropertyName>
              </TableColumnItem>
              
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>TypeInfo</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.XEvent.TypeInfo</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>
          <TableColumnHeader>
            <Label>Type Name</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Type Size</Label>
            <Width>10</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Description</Label>
            <Width>40</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>


        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Size</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Description</PropertyName>
              </TableColumnItem>

            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>MapInfo</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.XEvent.MapInfo</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>
          <TableColumnHeader>
            <Label>Name</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Description</Label>
            <Width>40</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Description</PropertyName>
              </TableColumnItem>

            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>MapValueInfo</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.XEvent.MapValueInfo</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>
          <TableColumnHeader>
            <Label>Name</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Value</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Value</PropertyName>
              </TableColumnItem>

            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>
    
    <View>
      <Name>PredSourceInfo</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.XEvent.PredSourceInfo</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>Name</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Type</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Description</Label>
            <Width>40</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>TypeName</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Description</PropertyName>
              </TableColumnItem>
              
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>PredCompareInfo</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.XEvent.PredCompareInfo</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>Name</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Type</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>
          
          <TableColumnHeader>
            <Label>Description</Label>
            <Width>40</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>
          
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>TypeName</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Description</PropertyName>
              </TableColumnItem>
              
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <!-- Utility -->
    <View>
      <Name>Utility</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.Utility.Utility</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>Instance Name</Label>
            <Width>80</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>DisplayName</PropertyName>
              </TableColumnItem>

            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

   <View>
      <Name>Computer</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.Utility.Computer</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>Name</Label>
            <Width>30</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Clustered</Label>
            <Width>27</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>IsClustered</PropertyName>
              </TableColumnItem>

            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>Volume</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.Utility.Volume</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>Mount Point</Label>
            <Width>12</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>
          
          <TableColumnHeader>
            <Label>Space Utilization %</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Total Space</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Total Space Used</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>
          
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>MountPointLocation</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>TotalSpaceUtilization</PropertyName>
              </TableColumnItem>
              
              <TableColumnItem>
                <PropertyName>TotalSpace</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>TotalSpaceUsed</PropertyName>
              </TableColumnItem>
              
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>Processor</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.Utility.Processor</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>Processor Name</Label>
            <Width>16</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Architecture</Label>
            <Width>18</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Clock Speed</Label>
            <Width>20</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Architecture</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>ClockSpeed</PropertyName>
              </TableColumnItem>

            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>
    
    <View>
      <Name>ImportedObject</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.Utility.ImportedObject</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>

          <TableColumnHeader>
            <Label>Name</Label>
            <Width>30</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

          <TableColumnHeader>
            <Label>Version</Label>
            <Width>27</Width>
            <Alignment>left</Alignment>
          </TableColumnHeader>

        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>

              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>

              <TableColumnItem>
                <PropertyName>Version</PropertyName>
              </TableColumnItem>

            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

  <!-- DAC -->

  <View>
      <Name>DAC</Name>
      <ViewSelectedBy>
          <TypeName>Microsoft.SqlServer.Management.DAC.DacStore</TypeName>
      </ViewSelectedBy>
      <TableControl>
          <TableHeaders>

              <TableColumnHeader>
                  <Label>Name</Label>
                  <Width>80</Width>
                  <Alignment>left</Alignment>
              </TableColumnHeader>

          </TableHeaders>
          <TableRowEntries>
              <TableRowEntry>
                  <TableColumnItems>

                      <TableColumnItem>
                          <PropertyName>Name</PropertyName>
                      </TableColumnItem>

                  </TableColumnItems>
              </TableRowEntry>
          </TableRowEntries>
      </TableControl>
  </View>
  <View>
    <Name>DacPackage</Name>
    <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.DAC.DacInstance</TypeName>
    </ViewSelectedBy>
    <TableControl>
        <TableHeaders>

            <TableColumnHeader>
                <Label>Instance Name</Label>
                <Width>30</Width>
                <Alignment>left</Alignment>
            </TableColumnHeader>

            <TableColumnHeader>
                <Label>Application Name</Label>
                <Width>30</Width>
                <Alignment>left</Alignment>
            </TableColumnHeader>

            <TableColumnHeader>
                <Label>Application Version</Label>
                <Width>27</Width>
                <Alignment>left</Alignment>
            </TableColumnHeader>

        </TableHeaders>
        <TableRowEntries>
            <TableRowEntry>
                <TableColumnItems>

                    <TableColumnItem>
                        <PropertyName>Name</PropertyName>
                    </TableColumnItem>

                    <TableColumnItem>
                        <ScriptBlock>$_.Type.Name</ScriptBlock>
                    </TableColumnItem>

                    <TableColumnItem>
                        <ScriptBlock>$_.Type.Version</ScriptBlock>
                    </TableColumnItem>

                </TableColumnItems>
            </TableRowEntry>
        </TableRowEntries>
    </TableControl>
  </View>

  <!-- AlwaysOn -->
  <View>
    <Name>AvailabilityDatabase</Name>
    <ViewSelectedBy>
      <TypeName>Microsoft.SqlServer.Management.Smo.AvailabilityDatabase</TypeName>
    </ViewSelectedBy>
    <TableControl>
      <TableHeaders>
        <TableColumnHeader>
          <Label>Name</Label>
          <Width>20</Width>
        </TableColumnHeader>
        <TableColumnHeader>
          <Label>SynchronizationState</Label>
          <Width>20</Width>
        </TableColumnHeader>
        <TableColumnHeader>
          <Label>IsSuspended</Label>
          <Width>11</Width>
        </TableColumnHeader>
        <TableColumnHeader>
          <Label>IsJoined</Label>
          <Width>8</Width>
        </TableColumnHeader>
      </TableHeaders>
      <TableRowEntries>
        <TableRowEntry>
          <TableColumnItems>
            <TableColumnItem>
              <PropertyName>Name</PropertyName>
            </TableColumnItem>
            <TableColumnItem>
              <PropertyName>SynchronizationState</PropertyName>
            </TableColumnItem>
            <TableColumnItem>
              <PropertyName>IsSuspended</PropertyName>
            </TableColumnItem>
            <TableColumnItem>
              <ScriptBlock>$_.IsJoined -eq 1</ScriptBlock>
            </TableColumnItem>
          </TableColumnItems>
        </TableRowEntry>
      </TableRowEntries>
    </TableControl>
  </View>

  <View>
    <Name>AvailabilityGroup</Name>
    <ViewSelectedBy>
      <TypeName>Microsoft.SqlServer.Management.Smo.AvailabilityGroup</TypeName>
    </ViewSelectedBy>
    <TableControl>
      <TableHeaders>
        <TableColumnHeader>
          <Label>Name</Label>
          <Width>20</Width>
        </TableColumnHeader>
        <TableColumnHeader>
          <Label>PrimaryReplicaServerName</Label>
          <Width>32</Width>
        </TableColumnHeader>
      </TableHeaders>
      <TableRowEntries>
        <TableRowEntry>
          <TableColumnItems>
            <TableColumnItem>
              <PropertyName>Name</PropertyName>
            </TableColumnItem>
            <TableColumnItem>
              <PropertyName>PrimaryReplicaServerName</PropertyName>
            </TableColumnItem>
          </TableColumnItems>
        </TableRowEntry>
      </TableRowEntries>
    </TableControl>
  </View>

  <View>
    <Name>AvailabilityReplica</Name>
    <ViewSelectedBy>
      <TypeName>Microsoft.SqlServer.Management.Smo.AvailabilityReplica</TypeName>
    </ViewSelectedBy>
    <TableControl>
      <TableHeaders>
        <TableColumnHeader>
          <Label>Name</Label>
          <Width>20</Width>
        </TableColumnHeader>
        <TableColumnHeader>
          <Label>Role</Label>
          <Width>9</Width>
        </TableColumnHeader>
        <TableColumnHeader>
          <Label>ConnectionState</Label>
          <Width>15</Width>
        </TableColumnHeader>
        <TableColumnHeader>
          <Label>RollupSynchronizationState</Label>
          <Width>26</Width>
        </TableColumnHeader>
      </TableHeaders>
      <TableRowEntries>
        <TableRowEntry>
          <TableColumnItems>
            <TableColumnItem>
              <PropertyName>Name</PropertyName>
            </TableColumnItem>
            <TableColumnItem>
              <PropertyName>Role</PropertyName>
            </TableColumnItem>
            <TableColumnItem>
              <PropertyName>ConnectionState</PropertyName>
            </TableColumnItem>
            <TableColumnItem>
              <PropertyName>RollupSynchronizationState</PropertyName>
            </TableColumnItem>
          </TableColumnItems>
        </TableRowEntry>
      </TableRowEntries>
    </TableControl>
  </View>

  <View>
    <Name>DatabaseReplicaState</Name>
    <ViewSelectedBy>
      <TypeName>Microsoft.SqlServer.Management.Smo.DatabaseReplicaState</TypeName>
    </ViewSelectedBy>
    <TableControl>
      <TableHeaders>
        <TableColumnHeader>
          <Label>AvailabilityReplicaServerName</Label>
          <Width>29</Width>
        </TableColumnHeader>
        <TableColumnHeader>
          <Label>AvailabilityDatabaseName</Label>
          <Width>24</Width>
        </TableColumnHeader>
        <TableColumnHeader>
          <Label>SynchronizationState</Label>
          <Width>21</Width>
        </TableColumnHeader>
        <TableColumnHeader>
          <Label>EstimatedRecoveryTime</Label>
          <Width>24</Width>
        </TableColumnHeader>
        <TableColumnHeader>
          <Label>SynchronizationPerformance</Label>
          <Width>26</Width>
        </TableColumnHeader>
        <TableColumnHeader>
          <Label>LogSendQueueSize</Label>
          <Width>16</Width>
        </TableColumnHeader>
      </TableHeaders>
      <TableRowEntries>
        <TableRowEntry>
          <TableColumnItems>
            <TableColumnItem>
              <PropertyName>AvailabilityReplicaServerName</PropertyName>
            </TableColumnItem>
            <TableColumnItem>
              <PropertyName>AvailabilityDatabaseName</PropertyName>
            </TableColumnItem>
            <TableColumnItem>
              <PropertyName>SynchronizationState</PropertyName>
            </TableColumnItem>
            <TableColumnItem>
              <PropertyName>EstimatedRecoveryTime</PropertyName>
            </TableColumnItem>
            <TableColumnItem>
              <PropertyName>SynchronizationPerformance</PropertyName>
            </TableColumnItem>
            <TableColumnItem>
              <PropertyName>LogSendQueueSize</PropertyName>
            </TableColumnItem>
          </TableColumnItems>
        </TableRowEntry>
      </TableRowEntries>
    </TableControl>
  </View>

  <View>
    <Name>DatabaseReplicaHealthState</Name>
    <ViewSelectedBy>
      <TypeName>Microsoft.SqlServer.Management.PowerShell.Hadr.DatabaseReplicaHealthState</TypeName>
    </ViewSelectedBy>
    <TableControl>
      <TableHeaders>
        <TableColumnHeader>
          <Label>HealthState</Label>
          <Width>22</Width>
        </TableColumnHeader>
        <TableColumnHeader>
          <Label>AvailabilityGroup</Label>
          <Width>20</Width>
        </TableColumnHeader>
        <TableColumnHeader>
          <Label>AvailabilityReplica</Label>
          <Width>20</Width>
        </TableColumnHeader>
        <TableColumnHeader>
          <Label>Name</Label>
        </TableColumnHeader>
      </TableHeaders>
      <TableRowEntries>
        <TableRowEntry>
          <TableColumnItems>
            <TableColumnItem>
              <PropertyName>HealthState</PropertyName>
            </TableColumnItem>
            <TableColumnItem>
              <PropertyName>AvailabilityGroup</PropertyName>
            </TableColumnItem>
            <TableColumnItem>
              <PropertyName>AvailabilityReplica</PropertyName>
            </TableColumnItem>
            <TableColumnItem>
              <PropertyName>Name</PropertyName>
            </TableColumnItem>
          </TableColumnItems>
        </TableRowEntry>
      </TableRowEntries>
    </TableControl>
  </View>

  <View>
    <Name>AvailabilityReplicaHealthState</Name>
    <ViewSelectedBy>
      <TypeName>Microsoft.SqlServer.Management.PowerShell.Hadr.AvailabilityReplicaHealthState</TypeName>
    </ViewSelectedBy>
    <TableControl>
      <TableHeaders>
        <TableColumnHeader>
          <Label>HealthState</Label>
          <Width>22</Width>
        </TableColumnHeader>
        <TableColumnHeader>
          <Label>AvailabilityGroup</Label>
          <Width>20</Width>
        </TableColumnHeader>
        <TableColumnHeader>
          <Label>Name</Label>
        </TableColumnHeader>
      </TableHeaders>
      <TableRowEntries>
        <TableRowEntry>
          <TableColumnItems>
            <TableColumnItem>
              <PropertyName>HealthState</PropertyName>
            </TableColumnItem>
            <TableColumnItem>
              <PropertyName>AvailabilityGroup</PropertyName>
            </TableColumnItem>
            <TableColumnItem>
              <PropertyName>Name</PropertyName>
            </TableColumnItem>
          </TableColumnItems>
        </TableRowEntry>
      </TableRowEntries>
    </TableControl>
  </View>

  <View>
    <Name>AvailabilityGroupHealthState</Name>
    <ViewSelectedBy>
      <TypeName>Microsoft.SqlServer.Management.PowerShell.Hadr.AvailabilityGroupHealthState</TypeName>
    </ViewSelectedBy>
    <TableControl>
      <TableHeaders>
        <TableColumnHeader>
          <Label>HealthState</Label>
          <Width>22</Width>
        </TableColumnHeader>
        <TableColumnHeader>
          <Label>Name</Label>
        </TableColumnHeader>
      </TableHeaders>
      <TableRowEntries>
        <TableRowEntry>
          <TableColumnItems>
              <TableColumnItem>
                <PropertyName>HealthState</PropertyName>           
              </TableColumnItem>
            <TableColumnItem>
              <PropertyName>Name</PropertyName>
            </TableColumnItem>
          </TableColumnItems>
        </TableRowEntry>
      </TableRowEntries>
    </TableControl>
  </View>

  <View>
    <Name>PolicyEvaluationDetails</Name>
    <ViewSelectedBy>
      <TypeName>Microsoft.SqlServer.Management.PowerShell.PolicyEvaluationDetails</TypeName>
    </ViewSelectedBy>
    <TableControl>
      <TableHeaders>
        <TableColumnHeader>
          <Label>Result</Label>
          <Width>6</Width>
        </TableColumnHeader>
        <TableColumnHeader>
          <Label>TargetObject</Label>
          <Width>20</Width>
        </TableColumnHeader>
        <TableColumnHeader>
          <Label>Category</Label>
          <Width>35</Width>
        </TableColumnHeader>
        <TableColumnHeader>
          <Label>Name</Label>
        </TableColumnHeader>
      </TableHeaders>
      <TableRowEntries>
        <TableRowEntry>
          <TableColumnItems>
            <TableColumnItem>
              <PropertyName>Result</PropertyName>
            </TableColumnItem>
            <TableColumnItem>
              <PropertyName>TargetObject</PropertyName>
            </TableColumnItem>
            <TableColumnItem>
              <PropertyName>Category</PropertyName>
            </TableColumnItem>
            <TableColumnItem>
              <PropertyName>Name</PropertyName>
            </TableColumnItem>
          </TableColumnItems>
        </TableRowEntry>
      </TableRowEntries>
    </TableControl>
  </View>

    <View>
      <Name>AvailabilityGroupListener</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.Smo.AvailabilityGroupListener</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>
          <TableColumnHeader>
            <Label>Name</Label>
            <Width>20</Width>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>PortNumber</Label>
            <Width>15</Width>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>ClusterIPConfiguration</Label>
          </TableColumnHeader>
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <wrap />
            <TableColumnItems>
              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>PortNumber</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>ClusterIPConfiguration</PropertyName>
              </TableColumnItem>
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>AvailabilityGroupListenerIPAddress</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.SqlServer.Management.Smo.AvailabilityGroupListenerIPAddress</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>
          <TableColumnHeader>
            <Label>IsDhcp</Label>
            <Width>6</Width>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>SubnetMask</Label>
            <Width>20</Width>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>IPAddress</Label>
            <Width>40</Width>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>State</Label>
          </TableColumnHeader>
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>
              <TableColumnItem>
                <PropertyName>IsDHCP</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>SubnetMask</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>IPAddress</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>IPAddressState</PropertyName>
              </TableColumnItem>
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>
    
  <!-- Analysis Services Provider - SQLAS -->

    <View>
      <Name>AnalysisServerHost</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.AnalysisServices.PowerShell.Provider.AnalysisServerHost</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>
          <TableColumnHeader>
            <Label>Host Name</Label>
            <Width>80</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>
              <TableColumnItem>
                <PropertyName>DisplayName</PropertyName>
              </TableColumnItem>
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>MajorObjectCollection</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.AnalysisServices.MajorObjectCollection</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>
          <TableColumnHeader>
            <Label>Collections</Label>
            <Width>80</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>
              <TableColumnItem>
                <PropertyName>DisplayName</PropertyName>
              </TableColumnItem>
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>ASServer</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.AnalysisServices.Server</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>
          <TableColumnHeader>
            <Label>Instance Name</Label>
            <Width>80</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>
              <TableColumnItem>
                <!-- DisplayName may not be available when servers are retrieved using AnalysisServerHost.AnalysisServers property -->
                <ScriptBlock>
                  if ([string]::IsNullOrEmpty($_.DisplayName)) { $_.Name }
                  else { $_.DisplayName }
                </ScriptBlock>
              </TableColumnItem>
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>ASDatabase</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.AnalysisServices.Database</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>
          <TableColumnHeader>
            <Label>Name</Label>
            <Width>40</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>State</Label>
            <Width>20</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Read-Write Mode</Label>
            <Width>20</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>
              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>State</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>ReadWriteMode</PropertyName>
              </TableColumnItem>
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>Cube</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.AnalysisServices.Cube</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>
          <TableColumnHeader>
            <Label>Name</Label>
            <Width>25</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>State</Label>
            <Width>18</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Processing Mode</Label>
            <Width>16</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Last Processed On</Label>
            <Width>17</Width>
            <Alignment>Right</Alignment>
          </TableColumnHeader>
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>
              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>State</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>ProcessingMode</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <ScriptBlock>$_.LastProcessed.ToString("g")</ScriptBlock>
              </TableColumnItem>
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>MeasureGroup</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.AnalysisServices.MeasureGroup</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>
          <TableColumnHeader>
            <Label>Name</Label>
            <Width>25</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>State</Label>
            <Width>18</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Type</Label>
            <Width>18</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Processing Mode</Label>
            <Width>16</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>
              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>State</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>Type</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>ProcessingMode</PropertyName>
              </TableColumnItem>
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>AggregateDesign</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.AnalysisServices.AggregationDesign</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>
          <TableColumnHeader>
            <Label>Name</Label>
            <Width>60</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Estimated Rows</Label>
            <Width>20</Width>
            <Alignment>Right</Alignment>
          </TableColumnHeader>
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>
              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>EstimatedRows</PropertyName>
              </TableColumnItem>
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>Partition</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.AnalysisServices.Partition</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>
          <TableColumnHeader>
            <Label>Name</Label>
            <Width>25</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Aggregation Design ID</Label>
            <Width>21</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Estimated Rows</Label>
            <Width>14</Width>
            <Alignment>Right</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Processing Mode</Label>
            <Width>16</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Type</Label>
            <Width>10</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Storage Mode</Label>
            <Width>12</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>
              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>AggregationDesignID</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>EstimatedRows</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>ProcessingMode</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>Type</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>CurrentStorageMode</PropertyName>
              </TableColumnItem>
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>Dimension</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.AnalysisServices.Dimension</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>
          <TableColumnHeader>
            <Label>Name</Label>
            <Width>35</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Processing Mode</Label>
            <Width>16</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>State</Label>
            <Width>18</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Current Storage Mode</Label>
            <Width>20</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>
              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>ProcessingMode</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>State</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>CurrentStorageMode</PropertyName>
              </TableColumnItem>
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>DimensionPermission</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.AnalysisServices.DimensionPermission</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>
          <TableColumnHeader>
            <Label>Name</Label>
            <Width>50</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Read Access</Label>
            <Width>15</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Write Access</Label>
            <Width>15</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>
              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>Read</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>Write</PropertyName>
              </TableColumnItem>
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>Assembly</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.AnalysisServices.Assembly</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>
          <TableColumnHeader>
            <Label>Name</Label>
            <Width>60</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Loaded State</Label>
            <Width>15</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>
              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>IsLoaded</PropertyName>
              </TableColumnItem>
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>DatabasePermission</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.AnalysisServices.DatabasePermission</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>
          <TableColumnHeader>
            <Label>Name</Label>
            <Width>50</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Read Access</Label>
            <Width>15</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Write Access</Label>
            <Width>15</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>
              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>Read</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>Write</PropertyName>
              </TableColumnItem>
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>Role</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.AnalysisServices.Role</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>
          <TableColumnHeader>
            <Label>Name</Label>
            <Width>60</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Created On</Label>
            <Width>20</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>
              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <ScriptBlock>$_.CreatedTimeStamp.ToSTring("g")</ScriptBlock>
              </TableColumnItem>
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>MiningStructure</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.AnalysisServices.MiningStructure</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>
          <TableColumnHeader>
            <Label>Name</Label>
            <Width>25</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Collation</Label>
            <Width>20</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Cache Mode</Label>
            <Width>20</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>State</Label>
            <Width>18</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>
              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>Collation</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>CacheMode</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>State</PropertyName>
              </TableColumnItem>
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>MiningModel</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.AnalysisServices.MiningModel</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>
          <TableColumnHeader>
            <Label>Name</Label>
            <Width>20</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>State</Label>
            <Width>18</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Algorithm</Label>
            <Width>28</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>AllowDrillThrough</Label>
            <Width>17</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>
              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>State</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>Algorithm</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>AllowDrillThrough</PropertyName>
              </TableColumnItem>
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>MiningModelPermission</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.AnalysisServices.MiningModelPermission</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>
          <TableColumnHeader>
            <Label>Name</Label>
            <Width>50</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Read Access</Label>
            <Width>15</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Write Access</Label>
            <Width>15</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>
              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>Read</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>Write</PropertyName>
              </TableColumnItem>
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>MiningStructurePermission</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.AnalysisServices.MiningStructurePermission</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>
          <TableColumnHeader>
            <Label>Name</Label>
            <Width>50</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Read Access</Label>
            <Width>15</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Write Access</Label>
            <Width>15</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>
              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>Read</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>Write</PropertyName>
              </TableColumnItem>
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>Trace</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.AnalysisServices.Trace</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>
          <TableColumnHeader>
            <Label>Name</Label>
            <Width>25</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Log File Name</Label>
            <Width>25</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Log File Size</Label>
            <Width>13</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Auto Restart</Label>
            <Width>12</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <Wrap/>
            <TableColumnItems>
              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>LogFileName</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>LogFileSize</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>AutoRestart</PropertyName>
              </TableColumnItem>
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>MdxScript</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.AnalysisServices.MdxScript</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>
          <TableColumnHeader>
            <Label>Name</Label>
            <Width>40</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Default Script</Label>
            <Width>17</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Created Timestamp</Label>
            <Width>20</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>
              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>DefaultScript</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <ScriptBlock>$_.CreatedTimestamp.ToSTring("g")</ScriptBlock>
              </TableColumnItem>
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>Perspective</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.AnalysisServices.Perspective</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>
          <TableColumnHeader>
            <Label>Name</Label>
            <Width>25</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>KPIs</Label>
            <Width>25</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Dimensions</Label>
            <Width>25</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>MeasureGroups</Label>
            <Width>25</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <Wrap/>
            <TableColumnItems>
              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>Kpis</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>Dimensions</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>MeasureGroups</PropertyName>
              </TableColumnItem>
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>CubePermission</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.AnalysisServices.CubePermission</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>
          <TableColumnHeader>
            <Label>Name</Label>
            <Width>50</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Read Access</Label>
            <Width>15</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Write Access</Label>
            <Width>15</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>
              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>Read</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>Write</PropertyName>
              </TableColumnItem>
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>DataSource</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.AnalysisServices.DataSource</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>
          <TableColumnHeader>
            <Label>Name</Label>
            <Width>25</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Isolation</Label>
            <Width>13</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Max Connections</Label>
            <Width>15</Width>
            <Alignment>Right</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Connection String</Label>
            <Width>40</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <Wrap/>
            <TableColumnItems>
              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>Isolation</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>MaxActiveConnections</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>ConnectionString</PropertyName>
              </TableColumnItem>
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>DataSourcePermission</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.AnalysisServices.DataSourcePermission</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>
          <TableColumnHeader>
            <Label>Name</Label>
            <Width>50</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Read Access</Label>
            <Width>15</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Write Access</Label>
            <Width>15</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>
              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>Read</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>Write</PropertyName>
              </TableColumnItem>
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

    <View>
      <Name>DataSourceView</Name>
      <ViewSelectedBy>
        <TypeName>Microsoft.AnalysisServices.DataSourceView</TypeName>
      </ViewSelectedBy>
      <TableControl>
        <TableHeaders>
          <TableColumnHeader>
            <Label>Name</Label>
            <Width>40</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
          <TableColumnHeader>
            <Label>Primary Data Source</Label>
            <Width>40</Width>
            <Alignment>Left</Alignment>
          </TableColumnHeader>
        </TableHeaders>
        <TableRowEntries>
          <TableRowEntry>
            <TableColumnItems>
              <TableColumnItem>
                <PropertyName>Name</PropertyName>
              </TableColumnItem>
              <TableColumnItem>
                <PropertyName>DataSource</PropertyName>
              </TableColumnItem>
            </TableColumnItems>
          </TableRowEntry>
        </TableRowEntries>
      </TableControl>
    </View>

  </ViewDefinitions>
</Configuration>

<!-- SIG # Begin signature block -->
<!-- MIIaoQYJKoZIhvcNAQcCoIIakjCCGo4CAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB -->
<!-- gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR -->
<!-- AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUl3Z3Io9USh1axS1eKpWuF9Qu -->
<!-- 89CgghWAMIIEwzCCA6ugAwIBAgITMwAAADQkMUDJoMF5jQAAAAAANDANBgkqhkiG -->
<!-- 9w0BAQUFADB3MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4G -->
<!-- A1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSEw -->
<!-- HwYDVQQDExhNaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EwHhcNMTMwMzI3MjAwODI1 -->
<!-- WhcNMTQwNjI3MjAwODI1WjCBszELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hp -->
<!-- bmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jw -->
<!-- b3JhdGlvbjENMAsGA1UECxMETU9QUjEnMCUGA1UECxMebkNpcGhlciBEU0UgRVNO -->
<!-- OkI4RUMtMzBBNC03MTQ0MSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFtcCBT -->
<!-- ZXJ2aWNlMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA5RoHrQqWLNS2 -->
<!-- NGTLNCDyvARYgou1CdxS1HCf4lws5/VqpPW2LrGBhlkB7ElsKQQe9TiLVxj1wDIN -->
<!-- 7TSQ7MZF5buKCiWq76F7h9jxcGdKzWrc5q8FkT3tBXDrQc+rsSVmu6uitxj5eBN4 -->
<!-- dc2LM1x97WfE7QP9KKxYYMF7vYCNM5NhYgixj1ESZY9BfsTVJektZkHTQzT6l4H4 -->
<!-- /Ieh7TlSH/jpPv9egMkGNgfb27lqxzfPhrUaS0rUJfLHyI2vYWeK2lMv80wegyxj -->
<!-- yqAQUhG6gVhzQoTjNLLu6pO+TILQfZYLT38vzxBdGkVmqwLxXyQARsHBVdKDckIi -->
<!-- hjqkvpNQAQIDAQABo4IBCTCCAQUwHQYDVR0OBBYEFF9LQt4MuTig1GY2jVb7dFlJ -->
<!-- ZoErMB8GA1UdIwQYMBaAFCM0+NlSRnAK7UD7dvuzK7DDNbMPMFQGA1UdHwRNMEsw -->
<!-- SaBHoEWGQ2h0dHA6Ly9jcmwubWljcm9zb2Z0LmNvbS9wa2kvY3JsL3Byb2R1Y3Rz -->
<!-- L01pY3Jvc29mdFRpbWVTdGFtcFBDQS5jcmwwWAYIKwYBBQUHAQEETDBKMEgGCCsG -->
<!-- AQUFBzAChjxodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpL2NlcnRzL01pY3Jv -->
<!-- c29mdFRpbWVTdGFtcFBDQS5jcnQwEwYDVR0lBAwwCgYIKwYBBQUHAwgwDQYJKoZI -->
<!-- hvcNAQEFBQADggEBAA9CUKDVHq0XPx8Kpis3imdYLbEwTzvvwldp7GXTTMVQcvJz -->
<!-- JfbkhALFdRxxWEOr8cmqjt/Kb1g8iecvzXo17GbX1V66jp9XhpQQoOtRN61X9id7 -->
<!-- I08Z2OBtdgQlMGESraWOoya2SOVT8kVOxbiJJxCdqePPI+l5bK6TaDoa8xPEFLZ6 -->
<!-- Op5B2plWntDT4BaWkHJMrwH3JAb7GSuYslXMep/okjprMXuA8w6eV4u35gW2OSWa -->
<!-- l4IpNos4rq6LGqzu5+wuv0supQc1gfMTIOq0SpOev5yDVn+tFS9cKXELlGc4/DC/ -->
<!-- Zef1Od7qIu2HjKuyO7UBwq3g/I4lFQwivp8M7R0wggTqMIID0qADAgECAhMzAAAA -->
<!-- rcZITC3LmkJMAAEAAACtMA0GCSqGSIb3DQEBBQUAMHkxCzAJBgNVBAYTAlVTMRMw -->
<!-- EQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVN -->
<!-- aWNyb3NvZnQgQ29ycG9yYXRpb24xIzAhBgNVBAMTGk1pY3Jvc29mdCBDb2RlIFNp -->
<!-- Z25pbmcgUENBMB4XDTEzMDEyNDIyMzMzNloXDTE0MDQyNDIyMzMzNlowgYIxCzAJ -->
<!-- BgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25k -->
<!-- MR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xDDAKBgNVBAsTA0FPQzEe -->
<!-- MBwGA1UEAxMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMIIBIjANBgkqhkiG9w0BAQEF -->
<!-- AAOCAQ8AMIIBCgKCAQEAkeMnx09ZS0aJkwmK+Nn9ls5hbV7sDDgRjh1Me9NGveN4 -->
<!-- X5KPe7v7K2t2s8jwxQb+mW14XvdhraItrL42DcMhD6kMYpJqM7CWJ2Y1Aa5txgEV -->
<!-- Wdt6dleqNokiLgR0SSSc4g6H+201iauvp6eof9V+zXe3bhDSVsNsRlfvhL+GGwv9 -->
<!-- OqgJgmANgHkYOwOs6WkmPgZFS2+WBSz/96431b7KbQGDgTwFOekCH4T1IwvfQ042 -->
<!-- nfzqEpdjFipV6C2BseOpJygWk1M3wE/Lxefg9eZj2NyxAWea1trfj0Ljpq3a0GCe -->
<!-- lG+ZOt731g9dgNuYrhGwiLO8sEgrBd2oL8A2TIUPAwIDAQABo4IBXzCCAVswEwYD -->
<!-- VR0lBAwwCgYIKwYBBQUHAwMwHQYDVR0OBBYEFCxae1q8Bjxi9itYdxNwAhMbv9/G -->
<!-- MFAGA1UdEQRJMEekRTBDMQwwCgYDVQQLEwNBT0MxMzAxBgNVBAUTKjMxNTk1KzRm -->
<!-- YWYwYjcxLWFkMzctNGFhMy1hNjcxLTc2YmMwNTIzNDRhZDAfBgNVHSMEGDAWgBTL -->
<!-- EejK0rQWWAHJNy4zFha5TJoKHzBWBgNVHR8ETzBNMEugSaBHhkVodHRwOi8vY3Js -->
<!-- Lm1pY3Jvc29mdC5jb20vcGtpL2NybC9wcm9kdWN0cy9NaWNDb2RTaWdQQ0FfMDgt -->
<!-- MzEtMjAxMC5jcmwwWgYIKwYBBQUHAQEETjBMMEoGCCsGAQUFBzAChj5odHRwOi8v -->
<!-- d3d3Lm1pY3Jvc29mdC5jb20vcGtpL2NlcnRzL01pY0NvZFNpZ1BDQV8wOC0zMS0y -->
<!-- MDEwLmNydDANBgkqhkiG9w0BAQUFAAOCAQEAaIaPnKajPQ3O0/RRrDnPnP9ex6OU -->
<!-- jQeqq6RvJaIDU2S6MqPAFg/1enQAH7AXm0EdAjDJx69GezOGxS4V7FgE2JUdS5Cj -->
<!-- hX9n2xOVqYs68GmX7gVy8ri2TQOCKUUzLBrIkqs74v/HM/NqmigRDJ2L7hdfs94I -->
<!-- MwEuAkU32PO7dmpQ94i/A3ejQI7Znm06S32WvoLfxnDBlrDzbQSrwx7Y8au54YUP -->
<!-- tkB/wOE/S7efoQ7HqIBw6NL/I25+Nb2eI/JOFyA8Wzzh+7vPAp3K+Bj0rO+uZUox -->
<!-- tOj56VUOlXvDPwQ8DVGcPet8By09g4a2Mbf2x0+mE0n2Ck0k9JMpK26j8DCCBbww -->
<!-- ggOkoAMCAQICCmEzJhoAAAAAADEwDQYJKoZIhvcNAQEFBQAwXzETMBEGCgmSJomT -->
<!-- 8ixkARkWA2NvbTEZMBcGCgmSJomT8ixkARkWCW1pY3Jvc29mdDEtMCsGA1UEAxMk -->
<!-- TWljcm9zb2Z0IFJvb3QgQ2VydGlmaWNhdGUgQXV0aG9yaXR5MB4XDTEwMDgzMTIy -->
<!-- MTkzMloXDTIwMDgzMTIyMjkzMloweTELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldh -->
<!-- c2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBD -->
<!-- b3Jwb3JhdGlvbjEjMCEGA1UEAxMaTWljcm9zb2Z0IENvZGUgU2lnbmluZyBQQ0Ew -->
<!-- ggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQCycllcGTBkvx2aYCAgQpl2 -->
<!-- U2w+G9ZvzMvx6mv+lxYQ4N86dIMaty+gMuz/3sJCTiPVcgDbNVcKicquIEn08Gis -->
<!-- TUuNpb15S3GbRwfa/SXfnXWIz6pzRH/XgdvzvfI2pMlcRdyvrT3gKGiXGqelcnNW -->
<!-- 8ReU5P01lHKg1nZfHndFg4U4FtBzWwW6Z1KNpbJpL9oZC/6SdCnidi9U3RQwWfjS -->
<!-- jWL9y8lfRjFQuScT5EAwz3IpECgixzdOPaAyPZDNoTgGhVxOVoIoKgUyt0vXT2Pn -->
<!-- 0i1i8UU956wIAPZGoZ7RW4wmU+h6qkryRs83PDietHdcpReejcsRj1Y8wawJXwPT -->
<!-- AgMBAAGjggFeMIIBWjAPBgNVHRMBAf8EBTADAQH/MB0GA1UdDgQWBBTLEejK0rQW -->
<!-- WAHJNy4zFha5TJoKHzALBgNVHQ8EBAMCAYYwEgYJKwYBBAGCNxUBBAUCAwEAATAj -->
<!-- BgkrBgEEAYI3FQIEFgQU/dExTtMmipXhmGA7qDFvpjy82C0wGQYJKwYBBAGCNxQC -->
<!-- BAweCgBTAHUAYgBDAEEwHwYDVR0jBBgwFoAUDqyCYEBWJ5flJRP8KuEKU5VZ5KQw -->
<!-- UAYDVR0fBEkwRzBFoEOgQYY/aHR0cDovL2NybC5taWNyb3NvZnQuY29tL3BraS9j -->
<!-- cmwvcHJvZHVjdHMvbWljcm9zb2Z0cm9vdGNlcnQuY3JsMFQGCCsGAQUFBwEBBEgw -->
<!-- RjBEBggrBgEFBQcwAoY4aHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3BraS9jZXJ0 -->
<!-- cy9NaWNyb3NvZnRSb290Q2VydC5jcnQwDQYJKoZIhvcNAQEFBQADggIBAFk5Pn8m -->
<!-- Rq/rb0CxMrVq6w4vbqhJ9+tfde1MOy3XQ60L/svpLTGjI8x8UJiAIV2sPS9MuqKo -->
<!-- VpzjcLu4tPh5tUly9z7qQX/K4QwXaculnCAt+gtQxFbNLeNK0rxw56gNogOlVuC4 -->
<!-- iktX8pVCnPHz7+7jhh80PLhWmvBTI4UqpIIck+KUBx3y4k74jKHK6BOlkU7IG9KP -->
<!-- cpUqcW2bGvgc8FPWZ8wi/1wdzaKMvSeyeWNWRKJRzfnpo1hW3ZsCRUQvX/TartSC -->
<!-- Mm78pJUT5Otp56miLL7IKxAOZY6Z2/Wi+hImCWU4lPF6H0q70eFW6NB4lhhcyTUW -->
<!-- X92THUmOLb6tNEQc7hAVGgBd3TVbIc6YxwnuhQ6MT20OE049fClInHLR82zKwexw -->
<!-- o1eSV32UjaAbSANa98+jZwp0pTbtLS8XyOZyNxL0b7E8Z4L5UrKNMxZlHg6K3RDe -->
<!-- ZPRvzkbU0xfpecQEtNP7LN8fip6sCvsTJ0Ct5PnhqX9GuwdgR2VgQE6wQuxO7bN2 -->
<!-- edgKNAltHIAxH+IOVN3lofvlRxCtZJj/UBYufL8FIXrilUEnacOTj5XJjdibIa4N -->
<!-- XJzwoq6GaIMMai27dmsAHZat8hZ79haDJLmIz2qoRzEvmtzjcT3XAH5iR9HOiMm4 -->
<!-- GPoOco3Boz2vAkBq/2mbluIQqBC0N1AI1sM9MIIGBzCCA++gAwIBAgIKYRZoNAAA -->
<!-- AAAAHDANBgkqhkiG9w0BAQUFADBfMRMwEQYKCZImiZPyLGQBGRYDY29tMRkwFwYK -->
<!-- CZImiZPyLGQBGRYJbWljcm9zb2Z0MS0wKwYDVQQDEyRNaWNyb3NvZnQgUm9vdCBD -->
<!-- ZXJ0aWZpY2F0ZSBBdXRob3JpdHkwHhcNMDcwNDAzMTI1MzA5WhcNMjEwNDAzMTMw -->
<!-- MzA5WjB3MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UE -->
<!-- BxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSEwHwYD -->
<!-- VQQDExhNaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0EwggEiMA0GCSqGSIb3DQEBAQUA -->
<!-- A4IBDwAwggEKAoIBAQCfoWyx39tIkip8ay4Z4b3i48WZUSNQrc7dGE4kD+7Rp9FM -->
<!-- rXQwIBHrB9VUlRVJlBtCkq6YXDAm2gBr6Hu97IkHD/cOBJjwicwfyzMkh53y9Gcc -->
<!-- LPx754gd6udOo6HBI1PKjfpFzwnQXq/QsEIEovmmbJNn1yjcRlOwhtDlKEYuJ6yG -->
<!-- T1VSDOQDLPtqkJAwbofzWTCd+n7Wl7PoIZd++NIT8wi3U21StEWQn0gASkdmEScp -->
<!-- ZqiX5NMGgUqi+YSnEUcUCYKfhO1VeP4Bmh1QCIUAEDBG7bfeI0a7xC1Un68eeEEx -->
<!-- d8yb3zuDk6FhArUdDbH895uyAc4iS1T/+QXDwiALAgMBAAGjggGrMIIBpzAPBgNV -->
<!-- HRMBAf8EBTADAQH/MB0GA1UdDgQWBBQjNPjZUkZwCu1A+3b7syuwwzWzDzALBgNV -->
<!-- HQ8EBAMCAYYwEAYJKwYBBAGCNxUBBAMCAQAwgZgGA1UdIwSBkDCBjYAUDqyCYEBW -->
<!-- J5flJRP8KuEKU5VZ5KShY6RhMF8xEzARBgoJkiaJk/IsZAEZFgNjb20xGTAXBgoJ -->
<!-- kiaJk/IsZAEZFgltaWNyb3NvZnQxLTArBgNVBAMTJE1pY3Jvc29mdCBSb290IENl -->
<!-- cnRpZmljYXRlIEF1dGhvcml0eYIQea0WoUqgpa1Mc1j0BxMuZTBQBgNVHR8ESTBH -->
<!-- MEWgQ6BBhj9odHRwOi8vY3JsLm1pY3Jvc29mdC5jb20vcGtpL2NybC9wcm9kdWN0 -->
<!-- cy9taWNyb3NvZnRyb290Y2VydC5jcmwwVAYIKwYBBQUHAQEESDBGMEQGCCsGAQUF -->
<!-- BzAChjhodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpL2NlcnRzL01pY3Jvc29m -->
<!-- dFJvb3RDZXJ0LmNydDATBgNVHSUEDDAKBggrBgEFBQcDCDANBgkqhkiG9w0BAQUF -->
<!-- AAOCAgEAEJeKw1wDRDbd6bStd9vOeVFNAbEudHFbbQwTq86+e4+4LtQSooxtYrhX -->
<!-- AstOIBNQmd16QOJXu69YmhzhHQGGrLt48ovQ7DsB7uK+jwoFyI1I4vBTFd1Pq5Lk -->
<!-- 541q1YDB5pTyBi+FA+mRKiQicPv2/OR4mS4N9wficLwYTp2OawpylbihOZxnLcVR -->
<!-- DupiXD8WmIsgP+IHGjL5zDFKdjE9K3ILyOpwPf+FChPfwgphjvDXuBfrTot/xTUr -->
<!-- XqO/67x9C0J71FNyIe4wyrt4ZVxbARcKFA7S2hSY9Ty5ZlizLS/n+YWGzFFW6J1w -->
<!-- lGysOUzU9nm/qhh6YinvopspNAZ3GmLJPR5tH4LwC8csu89Ds+X57H2146SodDW4 -->
<!-- TsVxIxImdgs8UoxxWkZDFLyzs7BNZ8ifQv+AeSGAnhUwZuhCEl4ayJ4iIdBD6Svp -->
<!-- u/RIzCzU2DKATCYqSCRfWupW76bemZ3KOm+9gSd0BhHudiG/m4LBJ1S2sWo9iaF2 -->
<!-- YbRuoROmv6pH8BJv/YoybLL+31HIjCPJZr2dHYcSZAI9La9Zj7jkIeW1sMpjtHhU -->
<!-- BdRBLlCslLCleKuzoJZ1GtmShxN1Ii8yqAhuoFuMJb+g74TKIdbrHk/Jmu5J4PcB -->
<!-- ZW+JC33Iacjmbuqnl84xKf8OxVtc2E0bodj6L54/LlUWa8kTo/0xggSLMIIEhwIB -->
<!-- ATCBkDB5MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UE -->
<!-- BxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSMwIQYD -->
<!-- VQQDExpNaWNyb3NvZnQgQ29kZSBTaWduaW5nIFBDQQITMwAAAK3GSEwty5pCTAAB -->
<!-- AAAArTAJBgUrDgMCGgUAoIGkMBkGCSqGSIb3DQEJAzEMBgorBgEEAYI3AgEEMBwG -->
<!-- CisGAQQBgjcCAQsxDjAMBgorBgEEAYI3AgEVMCMGCSqGSIb3DQEJBDEWBBTIA98D -->
<!-- esUkgNmEjFa1adUkVKy69DBEBgorBgEEAYI3AgEMMTYwNKAWgBQATQBpAGMAcgBv -->
<!-- AHMAbwBmAHQAIKEagBhodHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20wDQYJKoZIhvcN -->
<!-- AQEBBQAEggEAXy1nj5kCuoDgfM8N86GYqfVmAvi1yuJn+YiTvUJ+qzFJ5l9QaGQz -->
<!-- S9WfMslHdgwnjG5oijrhm4A4jgaXNveJeaV4c75sGQgVLz9nVAXmMYfnzLarNYVx -->
<!-- To8/ofn76kwEe6QMQY75cR6W0aHhk32wSSlB1KPX8ftImoBAm3F8NB5T7oXDdRmi -->
<!-- C82cRoDnStxA+yMZR8qISBMJ3vD6+6LIHBu1s7hIIwQCzSutSQKNt5Mrcob/hQ1t -->
<!-- ndMy/QBKGyEmPRR4RXkGEgTJO3MB7w+Dnyofi802mHY+kCaxAhgzor3KdqiQXOkG -->
<!-- DLZM+FcdtPYqTRmtSqDG9j8gotYpSurKHaGCAigwggIkBgkqhkiG9w0BCQYxggIV -->
<!-- MIICEQIBATCBjjB3MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQ -->
<!-- MA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9u -->
<!-- MSEwHwYDVQQDExhNaWNyb3NvZnQgVGltZS1TdGFtcCBQQ0ECEzMAAAA0JDFAyaDB -->
<!-- eY0AAAAAADQwCQYFKw4DAhoFAKBdMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEw -->
<!-- HAYJKoZIhvcNAQkFMQ8XDTEzMDkxOTE5MzIyNlowIwYJKoZIhvcNAQkEMRYEFHNN -->
<!-- xuGidcWGL1LOgjjfoKIM/JqeMA0GCSqGSIb3DQEBBQUABIIBACoem6vJQL3IlFfc -->
<!-- 4s0L6Eq1pZ91LIMnF/m2UMeaToL7bd8JUXgdtnBx2+kz3+NU3xqZ283onqYY/uxc -->
<!-- ow1F7aWygekvUD0OmCk1ey/iR98VQ7jvNb1qKIOf+LL/Ip4EieP/IXO4v2fHkJGu -->
<!-- 8IGdE2mlz5Q0CWi37VM/fqY83zUS9ECgYEluRB2FvHkmzomyH5BcWujHDReVKAuJ -->
<!-- Dnozqp414fDUTt80yodpI4oEJ3ni+HkSipTgUWpVKCbvdPOr9uz3HDEdJychjuVX -->
<!-- nzqR0JcqyUslbNhSnJWTP8MQP0wMCb1RjMx/v7xdmdaSjwszFBGb18nTlTW2JBsO -->
<!-- lUC2XJg= -->
<!-- SIG # End signature block -->
