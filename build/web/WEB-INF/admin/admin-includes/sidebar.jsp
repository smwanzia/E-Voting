<%-- 
    Document   : sidebar
    Created on : Mar 19, 2018, 1:50:06 PM
    Author     : xmore mmohz
--%>


<style>
    #mainNav{
        //background: #AFEAAA !important;
          background: #68CAE2 !important;
    }
    .navbar-sidenav{
        background:#51A5BA !important;
        //background: #8ca8c3;
    }
    #mainNav .fixed-top .navbar-dark .sidenav-toggle{
        // background:#AFEAAA!important;
         //line 228
    }
    .navbar-dark .navbar-nav .header .navlink {
   // color: rgba(255,255,255,.5);
      color:#FFF;
}
</style>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

 <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
    <a class="navbar-brand" href="index.html">E-VOTING SYSTEM</a>
    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    <!--start sidebar-->
    <div class="collapse navbar-collapse" id="navbarResponsive">
      <ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Home">
          <a class="nav-link" href="index.html">
            <i class="fa fa-fw fa-dashboard"></i>
            <span class="nav-link-text">Home</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Users">
          <a class="nav-link" href="AllUsers">
            <i class="fa fa-fw fa-user-circle-o"></i>
            <span class="nav-link-text">Users</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Candidates">
          <a class="nav-link" href="AllCandidates">
            <i class="fa fa-fw fa-user-secret"></i>
            <span class="nav-link-text">Candidates</span>
          </a>
        </li>
        <li class="nav-item" data-toggle="tooltip" data-placement="right" title="voter">
           <a class="nav-link" href="AllVoters">
            <i class="fa fa-fw fa-user-circle"></i>
            <span class="nav-link-text">Voters Register</span>
          </a>
          
        </li>
       <!-- <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Political Parties">
          <a class="nav-link" href="voter.html">
            <i class="fa fa-fw fa-file"></i>
            <span class="nav-link-text">Political Parties</span>
          </a>
         
        </li>-->
          <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Tallying Center">
           <a class="nav-link" href="TallyingCenter">
            <i class="fa fa-fw fa-calculator"></i>
            <span class="nav-link-text">Results Center</span>
          </a>
          
        </li>
         <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Election Setting" style="display: none">
           <a class="nav-link" href=" ViewParties">
            <i class="fa fa-fw fa-calculator"></i>
            <span class="nav-link-text">Election SetUp</span>
          </a>
          
        </li>
         <li class="nav-item" data-toggle="tooltip" data-placement="right" title="Menu Levels">
            <a class="nav-link nav-link-collapse collapsed" data-toggle="collapse" href="#collapseMulti" data-parent="#exampleAccordion">
              <i class="fa fa-fw fa-briefcase"></i>
              <span class="nav-link-text">Reports</span>
            </a>
                <ul class="sidenav-second-level collapse" id="collapseMulti" >
                          <li>
                              <a href="votedUser" target="_blank">Voted Students</a>
                          </li>
                          <li>
                              <a href="Candidatelist" target="blank_">Candidate List</a>
                          </li>
                          <li>
                            <a href="VoterRegisterPdf" target="blank_">Voter Register</a>
                          </li>
                 </ul>
        </li>
      
        
      </ul>
      <ul class="navbar-nav sidenav-toggler">
        <li class="nav-item">
          <a class="nav-link text-center" id="sidenavToggler">
            <i class="fa fa-fw fa-angle-left"></i>
          </a>
        </li>
      </ul>
      <!--end sidebar-->
        
        <!--start header-->
      <ul class="navbar-nav ml-auto">
        <li class="nav-item header">
          <a class="nav-link navlink" data-toggle="modal" data-target="#exampleModal">
            <i class="fa fa-fw fa-user-circle "></i>Profile</a>
        </li>
       <li class="nav-item header">
          <a class="nav-link navlink " data-toggle="modal" data-target="#exampleModal">
            <i class="fa fa-fw fa-sign-out"></i>Logout</a>
        </li>
      </ul>
    </div>
  </nav>