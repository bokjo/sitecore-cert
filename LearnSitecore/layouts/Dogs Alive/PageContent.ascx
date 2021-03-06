﻿<%@ Control language="C#" autoeventwireup="true" codebehind="PageContent.ascx.cs" inherits="LearnSitecore.layouts.Dogs_Alive.PageContent" %>
<%@ Register tagprefix="sc" namespace="Sitecore.Web.UI.WebControls" assembly="Sitecore.Kernel" %>

<div class="content" style="background: <%= Background %>;">
    <h1>
        <sc:Text Field="Main Heading" ID="MainHeading" runat="server" />
    </h1>

    <figure class="portrait">
        <sc:Image Field="Main Image" MaxWidth="400" ID="MainImage" runat="server" />
    </figure>

    <%--<p>Puppy kitty ipsum dolor sit good dog foot stick canary. Teeth Mittens grooming vaccine walk swimming nest good boy furry tongue heel furry treats fish. Cage run fast kitten dinnertime ball run foot park fleas throw house train licks stick dinnertime window. Yawn litter fish yawn toy pet gate throw Buddy kitty wag tail ball groom crate ferret heel wet nose Rover toys pet supplies. Bird Food treats tongue lick teeth ferret litter box slobbery litter box crate bird small animals yawn small animals shake slobber gimme five toys polydactyl meow. Turtle cage lazy cat foot lazy cat groom canary window tooth brush bedding lazy cat pet supplies turtle water dog shake pet supplies kitty. Walk bird harness wet nose meow harness grooming water dog lol catz water bedding toys bird seed fetch lazy cat. Parakeet scratcher brush biscuit lick dog tooth walk food lazy cat biscuit. Cockatiel Snowball kitten Rover ferret puppy.</p>--%>
    <%--<p>Pet Food pet supplies gimme five puppy cage food feathers food heel feathers running pet gate walk lazy dog Spike. Good Boy park lazy dog walk kibble Scooby snacks licks canary. Maine Coon Cat walk catch water dog slobber chew scratcher ID tag litter tuxedo dog house lazy cat park. Dinnertime fetch throw feathers fleas tongue lazy cat lick throw kitten parrot hamster wag tail aquarium chew heel good boy lick feathers cockatiel. Wet Nose food ferret vaccine finch vaccination Scooby snacks string wagging barky tail head good boy pet gate meow good boy. Commands shake bird biscuit left paw finch bark ferret bark gimme five turtle fur canary. Water puppy dog lick kisses pet supplies slobber cat bird seed. Food sit biscuit groom tongue cage.</p>--%>

    <sc:Text Field="Main Text" ID="MainText" runat="server" />

    <sc:EditFrame Buttons="Pet Information" runat="server">
        <h2>Breed</h2>
    </sc:EditFrame>
</div>
