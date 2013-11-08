<div ng-app="myapp">
{% raw %}
  <div ng-controller="MyController">
    <p>The app in this dive talks to a Firebase instance and renders using Angular.js.</p>

    <p>I've built things with Angular before but this is my first dive into Firebase. Some of the characteristics which make it interesting are:</p>
      
    <dl>
      <dt>NoBackend</dt>
      <dd>It does both kinds of auth (Z and N!) so you can dispense with backend code entirely and write your app on the client. The only exception is a simple, flexible language for specifying authorization rules.</dd>
    
      <dt>Realtime sync</dt>
      <dd>Data is synced automatically to connected clients when changes occur, enabling realtime updates in collaborative apps.</dd>
    
      <dt>Structured data</dt>
      <dd>Data in Firebase is basically a tree of JSON.</dd>
    </dl>      
    
    <p>There are several other backends which have similar characteristics, including the open source <a href="http://www.deployd.com/">deployd</a>, which I'll be exploring in a future dive.</p>
    <p>You can check out the source on Github using the edit link above.</p>
  
    <h2>First things first</h2><div class="row">
      <div class="col-sm-6">
        <p>I wanted to first get the stack working, so I did the basic Firebase tutorial app as a page in a Jekyll site.</p>
        
        <p>I ran into one silly issue with Jekyll's Liquid processing eating my mustaches before they got to Angular, which was solved by wrapping the whole page in a <code>{% raw %}</code> tag.</p>
      </div>
      <div class="col-sm-6">
        <div id="messages" class="panel panel-default">
          <div class="panel-body">
            <div ng-repeat="msg in messages"><em><i class="fa-{{msg.provider}}"></i> {{msg.name}}</em>: {{msg.text}}</div>
          </div>
        </div>
      </div>
    </div>

    <h2>Sign In</h2>
    <div class="row">
      <div class="col-sm-6">
        <p>Next I added authentication. Firebase has social signin built in so it's really easy to get started.</p>
      </div>
      <div class="col-sm-6">
        <div class="alert alert-warning" ng-hide="user"><p>Sign in with  <a ng-click="login('twitter')">Twitter</a> or <a ng-click="login('github')">Github</a>.</p></div>
        <div class="alert alert-success" ng-show="user">
          You are signed in as <i class="fa-{{user.provider}}"> {{user.name}}</i> | <a ng-click="logout()">Sign out</a>
        </div>
      </div>
    </div>

    <h2>Access restrictions</h2>
    <div class="row">
      <p class="col-sm-6">Being signed in is great, but I wanted to add some protected actions. I modified the chat app so that you are <a href="https://gist.github.com/edrex/6626021">only allowed</a> to post a message if you are signed in.</p>
      <div class="col-sm-6">
        <div id="messages" class="panel panel-default">
          <div class="panel-body">
            <span ng-hide="user">This would be an input field if you were signed in.</span>
            <div ng-show="user">
              <input class="form-control" type="text" ng-model="text" ng-keydown="addMessage($event)" placeholder="Message...">
            </div>
          </div>
        </div>
      </div>
    </div>

    <h2>All together now</h2>
    <div class="row">
      <p class="col-sm-6">Here is the finished app.</p>
      <div class="col-sm-6">
        <div id="messages" class="panel panel-default">
          <div class="panel-body">
            <div ng-repeat="msg in messages"><em><i class="fa-{{msg.provider}}"></i> {{msg.name}}</em>: {{msg.text}}</div>
          </div>
          <div class="panel-footer">
            <form class="form-inline" role="form">
            <div ng-show="user">
              <input class="form-control" type="text" ng-model="text" ng-keydown="addMessage($event)" placeholder="Message...">
            </div>
            <span ng-hide="user">Sign in with <a ng-click="login('twitter')">Twitter</a> or <a ng-click="login('github')">Github</a> to post messages.</span>
          </div>
        </div>
      </div>
    </div>
  </div>
{% endraw %}
</div>
