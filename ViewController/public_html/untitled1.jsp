<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsf/core" prefix="f"%>
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h"%>
<%@ taglib uri="http://xmlns.oracle.com/adf/faces/rich" prefix="af"%>
<f:view>
  <af:document id="d1">
    <af:messages id="m1"/>
    <af:form id="f1">
      <af:panelCollection id="pc1">
        <f:facet name="menus"/>
        <f:facet name="toolbar"/>
        <f:facet name="statusbar"/>
        <af:table value="#{bindings.DepartmentsEoView1.collectionModel}"
                  var="row" rows="#{bindings.DepartmentsEoView1.rangeSize}"
                  emptyText="#{bindings.DepartmentsEoView1.viewable ? 'No data to display.' : 'Access Denied.'}"
                  fetchSize="#{bindings.DepartmentsEoView1.rangeSize}"
                  rowBandingInterval="0"
                  filterModel="#{bindings.DepartmentsEoView1Query.queryDescriptor}"
                  queryListener="#{bindings.DepartmentsEoView1Query.processQuery}"
                  filterVisible="true" varStatus="vs"
                  selectedRowKeys="#{bindings.DepartmentsEoView1.collectionModel.selectedRow}"
                  selectionListener="#{bindings.DepartmentsEoView1.collectionModel.makeCurrent}"
                  rowSelection="single" id="t1" columnStretching="last"
                  scrollPolicy="page" autoHeightRows="0">
          <af:column sortProperty="#{bindings.DepartmentsEoView1.hints.DepartmentId.name}"
                     filterable="true" sortable="true"
                     headerText="#{bindings.DepartmentsEoView1.hints.DepartmentId.label}"
                     id="c4">
            <af:inputText value="#{row.bindings.DepartmentId.inputValue}"
                          label="#{bindings.DepartmentsEoView1.hints.DepartmentId.label}"
                          required="#{bindings.DepartmentsEoView1.hints.DepartmentId.mandatory}"
                          columns="#{bindings.DepartmentsEoView1.hints.DepartmentId.displayWidth}"
                          maximumLength="#{bindings.DepartmentsEoView1.hints.DepartmentId.precision}"
                          shortDesc="#{bindings.DepartmentsEoView1.hints.DepartmentId.tooltip}"
                          id="it3">
              <f:validator binding="#{row.bindings.DepartmentId.validator}"/>
              <af:convertNumber groupingUsed="false"
                                pattern="#{bindings.DepartmentsEoView1.hints.DepartmentId.format}"/>
            </af:inputText>
          </af:column>
          <af:column sortProperty="#{bindings.DepartmentsEoView1.hints.DepartmentName.name}"
                     filterable="true" sortable="true"
                     headerText="#{bindings.DepartmentsEoView1.hints.DepartmentName.label}"
                     id="c1">
            <af:inputText value="#{row.bindings.DepartmentName.inputValue}"
                          label="#{bindings.DepartmentsEoView1.hints.DepartmentName.label}"
                          required="#{bindings.DepartmentsEoView1.hints.DepartmentName.mandatory}"
                          columns="#{bindings.DepartmentsEoView1.hints.DepartmentName.displayWidth}"
                          maximumLength="#{bindings.DepartmentsEoView1.hints.DepartmentName.precision}"
                          shortDesc="#{bindings.DepartmentsEoView1.hints.DepartmentName.tooltip}"
                          id="it1">
              <f:validator binding="#{row.bindings.DepartmentName.validator}"/>
            </af:inputText>
          </af:column>
          <af:column sortProperty="#{bindings.DepartmentsEoView1.hints.ManagerId.name}"
                     filterable="true" sortable="true"
                     headerText="#{bindings.DepartmentsEoView1.hints.ManagerId.label}"
                     id="c2">
            <af:inputText value="#{row.bindings.ManagerId.inputValue}"
                          label="#{bindings.DepartmentsEoView1.hints.ManagerId.label}"
                          required="#{bindings.DepartmentsEoView1.hints.ManagerId.mandatory}"
                          columns="#{bindings.DepartmentsEoView1.hints.ManagerId.displayWidth}"
                          maximumLength="#{bindings.DepartmentsEoView1.hints.ManagerId.precision}"
                          shortDesc="#{bindings.DepartmentsEoView1.hints.ManagerId.tooltip}"
                          id="it4">
              <f:validator binding="#{row.bindings.ManagerId.validator}"/>
              <af:convertNumber groupingUsed="false"
                                pattern="#{bindings.DepartmentsEoView1.hints.ManagerId.format}"/>
            </af:inputText>
          </af:column>
          <af:column sortProperty="#{bindings.DepartmentsEoView1.hints.LocationId.name}"
                     filterable="true" sortable="true"
                     headerText="#{bindings.DepartmentsEoView1.hints.LocationId.label}"
                     id="c3">
            <af:inputText value="#{row.bindings.LocationId.inputValue}"
                          label="#{bindings.DepartmentsEoView1.hints.LocationId.label}"
                          required="#{bindings.DepartmentsEoView1.hints.LocationId.mandatory}"
                          columns="#{bindings.DepartmentsEoView1.hints.LocationId.displayWidth}"
                          maximumLength="#{bindings.DepartmentsEoView1.hints.LocationId.precision}"
                          shortDesc="#{bindings.DepartmentsEoView1.hints.LocationId.tooltip}"
                          id="it2">
              <f:validator binding="#{row.bindings.LocationId.validator}"/>
              <af:convertNumber groupingUsed="false"
                                pattern="#{bindings.DepartmentsEoView1.hints.LocationId.format}"/>
            </af:inputText>
          </af:column>
        </af:table>
      </af:panelCollection>
    </af:form>
  </af:document>
</f:view>