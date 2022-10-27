<?xml version="1.0"?>
    <xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="xml" indent="yes"/>
    
        <xsl:template match="EmployeeTime">

        <EmployeeTime>
            <xsl:for-each select="EmployeeTime[timeType='0220']">

            <Absence>
                <userId>
                    <xsl:value-of select="userId"/>
                </userId>
                <originalQuantityInDays>
                    <xsl:value-of select="originalQuantityInDays"/>
                </originalQuantityInDays>
                <approvalStatus>
                    <xsl:value-of select="approvalStatus"/>
                </approvalStatus>
                <undeterminedEndDate>
                    <xsl:value-of select="undeterminedEndDate"/>
                </undeterminedEndDate>
                <createdDateTime>
                    <xsl:value-of select="createdDateTime"/>
                </createdDateTime>

                <FirstPeriod>
                    <startDate>
                        <xsl:value-of select="startDate"/>
                    </startDate>
                    <quantityInDays>120</quantityInDays>
                    <timeType>0290</timeType>
                    <endDate>
                        <xsl:value-of select="endDate"/>
                    </endDate>
                </FirstPeriod>

            
                <LastPeriod>
                    <startDate>
                        <xsl:value-of select="startDate"/>
                    </startDate>
                    <quantityInDays>
                        <xsl:value-of select="quantityInDays - 120"/>
                    </quantityInDays>
                    <timeType>1290</timeType>
                    <endDate>
                        <xsl:value-of select="endDate"/>
                    </endDate>
                </LastPeriod>
           
            </Absence>
            </xsl:for-each>

        </EmployeeTime>
        </xsl:template>
    
    </xsl:stylesheet>
    
