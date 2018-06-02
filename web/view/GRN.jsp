<%@page import="java.util.ArrayList"%>
<%@page import="model.Units"%>
<%@include file="includ/1nave_1.jsp" %>


<div class="container-fluid">
    <!-- Breadcrumbs-->
    <ol class="breadcrumb">
        <li class="breadcrumb-item">
            <a href="index.html">Home</a>
        </li>
        <li class="breadcrumb-item active">GRN</li>
    </ol>
    <div class="row">
        <div class="col-12">


            <!--// Methanini Uda tika daganna-->
            <script type="text/javascript" src="../js/grnjs.js"></script>

            <form class="form-horizontal" action="#" method="post">
                <div style="background-color: #cccccc; margin-right: 300pt;padding: auto; width: auto;">
                    <div id="mainform">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="supname">Suplier Name:</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="supname" placeholder="Enter Supplier Name" name="supname">
                            </div>
                        </div>
                    </div>
                    <div id="mainform">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="date">Date:</label>
                            <div class="col-sm-4">
                                <input type="date" class="form-control" id="date" placeholder="Select Date" name="date" >
                            </div>
                        </div>
                    </div>
                    <div id="mainform">
                        <div class="form-group">
                            <label class="control-label col-sm-2" for="total">Full Total:</label>
                            <div class="col-sm-4">
                                <input type="text" class="form-control" id="total" name="fultot" disabled value=0>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="mainform">
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="prname">Product Name:</label>
                        <div class="col-sm-4">
                            <input type="text" class="form-control" id="prname" placeholder="Enter Product Name" name="prname">
                        </div>
                    </div>
                </div>
                <div id="mainform">
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="buyprice">Buying Price:</label>
                        <div class="col-sm-4">
                            <input type="number" class="form-control" id="buyprice" placeholder="Enter Buying Price" name="buyprice" >
                        </div>
                    </div>
                </div>
                <div id="mainform">
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="qty">Quantity:</label>
                        <div class="col-sm-4">
                            <input type="number" class="form-control" id="qty" placeholder="Enter Quantity" name="qty">
                        </div>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-6" for="add">
                        <input type="button" class="btn btn-info" value="Add" id="add"onclick="Javascript:addRow()">
                        <input type="reset" class="btn btn-info" value="reset">
                    </label>
                </div>





                <div id="mydata">
                    <table id="myTableData"  border="1" cellpadding="2">
                        <tr>
                            <td>&nbsp;</td>
                            <td><b>Product Name</b></td>
                            <td><b>Buying Price</b></td>
                            <td><b>Quantity</b></td>
                            <td><b>Product Total</b></td>
                        </tr>
                    </table>
                </div>
                <div class="form-group">
                    <label class="control-label col-sm-6" for="save" >
                        <input type="hidden" id="tblrowcount" value=""/>
                        <input type="submit" class="btn btn-danger" value="save" onclick="addtable()">

                    </label>
                </div>
            </form>

            <!--// methanin yata tika daganna-->


        </div>
    </div>
</form>
</div>
<!-- /.container-fluid-->
<%@include file="includ/2footer_1.jsp" %>