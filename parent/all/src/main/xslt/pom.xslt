<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="2.0"
                xmlns="http://maven.apache.org/POM/4.0.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xpath-default-namespace="http://maven.apache.org/POM/4.0.0">

    <xsl:output indent="yes" method="xml"/>

    <xsl:variable name="workDir">${project.build.directory}/dependency/</xsl:variable>
    <xsl:variable name="dependencies" select="/project/dependencies/dependency[type='pom']"/>

    <xsl:template match="/">
        <xsl:comment>
            !!DO NOT EDIT!! Auto-generated
            XSLT Version = <xsl:copy-of select="system-property('xsl:version')"/>
            XSLT Vendor = <xsl:copy-of select="system-property('xsl:vendor')"/>
            XSLT Vendor URL = <xsl:copy-of select="system-property('xsl:vendor-url')"/>
        </xsl:comment>
        <xsl:apply-templates select="node()"/>
    </xsl:template>

    <xsl:template match="/project/artifactId/text()[ends-with(.,'-pom-builder')]">
        <xsl:copy-of select="substring-before(.,'-pom-builder')"/>
    </xsl:template>

    <xsl:template match="/project/name/text()[ends-with(.,' [POM Builder]')]">
        <xsl:copy-of select="substring-before(.,' [POM Builder]')"/>
    </xsl:template>

    <xsl:template match="node()|@*">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="/project/parent">
        <xsl:if test="empty(/project/groupId)">
            <xsl:copy-of copy-namespaces="no" select="groupId"/>
        </xsl:if>
        <xsl:if test="empty(/project/version)">
            <xsl:copy-of copy-namespaces="no" select="version"/>
        </xsl:if>
    </xsl:template>

    <xsl:template match="/project/url">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
            <xsl:for-each select="$dependencies">
                <xsl:variable name="artifactId" select="artifactId"/>
                <xsl:variable name="version" select="version"/>
                <xsl:copy-of copy-namespaces="no" select="document(concat($workDir,$artifactId,'-',$version,'.pom'))/project/url/node()|@*"/>
            </xsl:for-each>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="/project/inceptionYear">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
            <xsl:for-each select="$dependencies">
                <xsl:variable name="artifactId" select="artifactId"/>
                <xsl:variable name="version" select="version"/>
                <xsl:copy-of copy-namespaces="no" select="document(concat($workDir,$artifactId,'-',$version,'.pom'))/project/inceptionYear/node()|@*"/>
            </xsl:for-each>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="/project/organization">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
            <xsl:for-each select="$dependencies">
                <xsl:variable name="artifactId" select="artifactId"/>
                <xsl:variable name="version" select="version"/>
                <xsl:copy-of copy-namespaces="no" select="document(concat($workDir,$artifactId,'-',$version,'.pom'))/project/organization/node()|@*"/>
            </xsl:for-each>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="/project/licenses">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
            <xsl:for-each select="$dependencies">
                <xsl:variable name="artifactId" select="artifactId"/>
                <xsl:variable name="version" select="version"/>
                <xsl:copy-of copy-namespaces="no" select="document(concat($workDir,$artifactId,'-',$version,'.pom'))/project/licenses/node()|@*"/>
            </xsl:for-each>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="/project/developers">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
            <xsl:for-each select="$dependencies">
                <xsl:variable name="artifactId" select="artifactId"/>
                <xsl:variable name="version" select="version"/>
                <xsl:copy-of copy-namespaces="no" select="document(concat($workDir,$artifactId,'-',$version,'.pom'))/project/developers/node()|@*"/>
            </xsl:for-each>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="/project/contributors">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
            <xsl:for-each select="$dependencies">
                <xsl:variable name="artifactId" select="artifactId"/>
                <xsl:variable name="version" select="version"/>
                <xsl:copy-of copy-namespaces="no" select="document(concat($workDir,$artifactId,'-',$version,'.pom'))/project/contributors/node()|@*"/>
            </xsl:for-each>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="/project/dependencies/dependency[type='pom']"/>

    <xsl:template match="/project/build/extensions">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
            <xsl:for-each select="$dependencies">
                <xsl:variable name="artifactId" select="artifactId"/>
                <xsl:variable name="version" select="version"/>
                <xsl:copy-of copy-namespaces="no" select="document(concat($workDir,$artifactId,'-',$version,'.pom'))/project/build/extensions/node()|@*"/>
            </xsl:for-each>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="/project/build/pluginManagement/plugins">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
            <xsl:for-each select="$dependencies">
                <xsl:variable name="artifactId" select="artifactId"/>
                <xsl:variable name="version" select="version"/>
                <xsl:copy-of copy-namespaces="no" select="document(concat($workDir,$artifactId,'-',$version,'.pom'))/project/build/pluginManagement/plugins/node()|@*"/>
            </xsl:for-each>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="/project/build/plugins">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
            <xsl:for-each select="$dependencies">
                <xsl:variable name="artifactId" select="artifactId"/>
                <xsl:variable name="version" select="version"/>
                <xsl:copy-of copy-namespaces="no" select="document(concat($workDir,$artifactId,'-',$version,'.pom'))/project/build/plugins/node()|@*"/>
            </xsl:for-each>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="/project/mailingLists">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
            <xsl:for-each select="$dependencies">
                <xsl:variable name="artifactId" select="artifactId"/>
                <xsl:variable name="version" select="version"/>
                <xsl:copy-of copy-namespaces="no" select="document(concat($workDir,$artifactId,'-',$version,'.pom'))/project/mailingLists/node()|@*"/>
            </xsl:for-each>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="/project/scm">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
            <xsl:for-each select="$dependencies">
                <xsl:variable name="artifactId" select="artifactId"/>
                <xsl:variable name="version" select="version"/>
                <xsl:copy-of copy-namespaces="no" select="document(concat($workDir,$artifactId,'-',$version,'.pom'))/project/scm/node()|@*"/>
            </xsl:for-each>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="/project/issueManagement">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
            <xsl:for-each select="$dependencies">
                <xsl:variable name="artifactId" select="artifactId"/>
                <xsl:variable name="version" select="version"/>
                <xsl:copy-of copy-namespaces="no" select="document(concat($workDir,$artifactId,'-',$version,'.pom'))/project/issueManagement/node()|@*"/>
            </xsl:for-each>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="/project/ciManagement">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
            <xsl:for-each select="$dependencies">
                <xsl:variable name="artifactId" select="artifactId"/>
                <xsl:variable name="version" select="version"/>
                <xsl:copy-of copy-namespaces="no" select="document(concat($workDir,$artifactId,'-',$version,'.pom'))/project/ciManagement/node()|@*"/>
            </xsl:for-each>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="/project/dependencyManagement">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
            <xsl:for-each select="$dependencies">
                <xsl:variable name="artifactId" select="artifactId"/>
                <xsl:variable name="version" select="version"/>
                <xsl:copy-of copy-namespaces="no" select="document(concat($workDir,$artifactId,'-',$version,'.pom'))/project/dependencyManagement/node()|@*"/>
            </xsl:for-each>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="/project/dependencies">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
            <xsl:for-each select="$dependencies">
                <xsl:variable name="artifactId" select="artifactId"/>
                <xsl:variable name="version" select="version"/>
                <xsl:copy-of copy-namespaces="no" select="document(concat($workDir,$artifactId,'-',$version,'.pom'))/project/dependencies/node()|@*"/>
            </xsl:for-each>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="/project/profiles">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
            <xsl:for-each select="$dependencies">
                <xsl:variable name="artifactId" select="artifactId"/>
                <xsl:variable name="version" select="version"/>
                <xsl:copy-of copy-namespaces="no" select="document(concat($workDir,$artifactId,'-',$version,'.pom'))/project/profiles/node()|@*"/>
            </xsl:for-each>
        </xsl:copy>
    </xsl:template>

    <xsl:template match="/project/properties">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
            <xsl:for-each select="$dependencies">
                <xsl:variable name="artifactId" select="artifactId"/>
                <xsl:variable name="version" select="version"/>
                <xsl:copy-of copy-namespaces="no" select="document(concat($workDir,$artifactId,'-',$version,'.pom'))/project/properties/node()|@*"/>
            </xsl:for-each>
        </xsl:copy>
    </xsl:template>

</xsl:stylesheet>
