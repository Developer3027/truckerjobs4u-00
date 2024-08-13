landing index:
<div class="w-full">
  <% if notice.present? %>
    <p class="py-2 px-3 bg-green-50 mb-5 text-green-500 font-medium rounded-lg inline-block" id="notice"><%= notice %></p>
  <% end %>
  <% content_for :title, "Landings" %>
  <div class="flex justify-between items-center">
    <h1 class="font-bold text-4xl">Landings</h1>
    <%= link_to "New landing", new_landing_path, class: "rounded-lg py-3 px-5 bg-blue-600 text-white block font-medium" %>
  </div>
  <div id="landings" class="min-w-full">
    <% @landings.each do |landing| %>
      <%= render landing %>
      <p>
        <%= link_to "Show this landing", landing, class: "ml-2 rounded-lg py-3 px-5 bg-gray-100 inline-block font-medium" %>
      </p>
    <% end %>
  </div>
</div>

present svg
<div>
  <svg class="w-7 h-7 text-gray-500 dark:text-gray-400 mb-3" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="currentColor" viewBox="0 0 20 20">
    <path d="M18 5h-.7c.229-.467.349-.98.351-1.5a3.5 3.5 0 0 0-3.5-3.5c-1.717 0-3.215 1.2-4.331 2.481C8.4.842 6.949 0 5.5 0A3.5 3.5 0 0 0 2 3.5c.003.52.123 1.033.351 1.5H2a2 2 0 0 0-2 2v3a1 1 0 0 0 1 1h18a1 1 0 0 0 1-1V7a2 2 0 0 0-2-2ZM8.058 5H5.5a1.5 1.5 0 0 1 0-3c.9 0 2 .754 3.092 2.122-.219.337-.392.635-.534.878Zm6.1 0h-3.742c.933-1.368 2.371-3 3.739-3a1.5 1.5 0 0 1 0 3h.003ZM11 13H9v7h2v-7Zm-4 0H2v5a2 2 0 0 0 2 2h3v-7Zm6 0v7h3a2 2 0 0 0 2-2v-5h-5Z"/>
  </svg>
</div>

cards removed from hero
<div class="sm:flex flex-col sm:flex-row justify-center sm:justify-evenly w-11/12 pb-6 dark:bg-slate-900 rounded-b">
        <!--card 1-->
        <div class="max-w-sm p-6 my-2 bg-white border border-gray-200 rounded-lg shadow dark:bg-slate-900 dark:border-slate-700">
          <a href="#">
            <h5 class="mb-2 text-2xl font-semibold tracking-tight text-gray-900 dark:text-white">Need a help in Claim?</h5>
          </a>
          <p class="mb-3 font-normal text-gray-500 dark:text-gray-400">Go to this step by step guideline process on how to certify for your weekly benefits:</p>
          <a href="#" class="inline-flex font-medium items-center text-blue-600 hover:underline">
            See our guideline
            <svg class="w-3 h-3 ms-2.5 rtl:rotate-[270deg]" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 18 18">
              <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 11v4.833A1.166 1.166 0 0 1 13.833 17H2.167A1.167 1.167 0 0 1 1 15.833V4.167A1.166 1.166 0 0 1 2.167 3h4.618m4.447-2H17v5.768M9.111 8.889l7.778-7.778"/>
            </svg>
          </a>
        </div>
        <!--card 2-->
        <div class="max-w-sm p-6 my-2 bg-white border border-gray-200 rounded-lg shadow dark:bg-slate-900 dark:border-slate-700">
          <a href="#">
            <h5 class="mb-2 text-2xl font-semibold tracking-tight text-gray-900 dark:text-white">Need a help in Claim?</h5>
          </a>
          <p class="mb-3 font-normal text-gray-500 dark:text-gray-400">Go to this step by step guideline process on how to certify for your weekly benefits:</p>
          <a href="#" class="inline-flex font-medium items-center text-blue-600 hover:underline">
            See our guideline
            <svg class="w-3 h-3 ms-2.5 rtl:rotate-[270deg]" aria-hidden="true" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 18 18">
              <path stroke="currentColor" stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M15 11v4.833A1.166 1.166 0 0 1 13.833 17H2.167A1.167 1.167 0 0 1 1 15.833V4.167A1.166 1.166 0 0 1 2.167 3h4.618m4.447-2H17v5.768M9.111 8.889l7.778-7.778"/>
            </svg>
          </a>
        </div>
      </div>

form:
<%= form_for(resource, as: resource_name, url: registration_path(resource_name), class: "mt-8 space-y-6",) do |f| %>
  <div class="flex flex-col items-start">
    <div class="flex justify-center items-center">
      <%= f.label :first_name, "First Name", class: "block m-2 text-sm font-medium text-gray-900 dark:text-white" %>
      <em class="font-bold text-lg text-red-400">*</em>
    </div>
    <%= f.text_field :first_name, class: "bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500" %>
  </div>
<% end %>


<div class="flex items-start mb-5">
  <div class="flex items-center h-5">
    <input id="remember" type="checkbox" value="" class="w-4 h-4 border border-gray-300 rounded bg-gray-50 focus:ring-3 focus:ring-blue-300 dark:bg-gray-700 dark:border-gray-600 dark:focus:ring-blue-600 dark:ring-offset-gray-800 dark:focus:ring-offset-gray-800" required />
  </div>
  <label for="remember" class="ms-2 text-sm font-medium text-gray-900 dark:text-gray-300">Remember me</label>
</div>

<p class="text-gray-800 dark:text-white"><small>Required fields are indicated with "<span class="font-bold text-lg text-red-400">*</span>"</small></p>