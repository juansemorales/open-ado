{smcl}
{* August 30, 2019}{...}
{hline}
help for {hi:tsperiods}
{hline}

{title:tsperiods} - A module that divides a panel dataset into equisized groups, with zero denoting the date of an event.  

{p 8 16 2}{cmd:tsperiods}
{cmd:,} 
{cmdab:bys:(}{it:varlist}{cmd:)} {cmdab:datevar:(}{it:var}{cmd:)} {cmdab:periods:(}{it:integer}{cmd:)} 
[{cmdab:event:(}{it:var}{cmd:)} {cmdab:eventdate:(}{it:var}{cmd:)} {cmd:ignore_panel} {cmd:mevents} {cmdab:maxperiods:(}{it:integer}{cmd:)}
{cmdab:name:(}{it:string}{cmd:)} {cmdab:overlap:(}{it:integer}{cmd:)} {cmd:symmetric}]

{cmd:tsperiods} returns a new variabled called {it:epoch}, unless {cmd:name} is specified

{p 4 4 2}
where

{p 8 16 2}
{cmd:bys} list of variables that constitute an ID.

{p 8 16 2}
{cmd:datevar} is a date variable. {cmd:tsperiods} works with daily and monthly data.

{p 8 16 2}
{cmd:maxperiods} the maximum number of epochs to be considered

{p 8 16 2}
{cmd:periods} length on an epoch. If option {cmd:symmetric} is selected, {cmd:periods} must be even.
  
{p 8 16 2}
{cmd:event} is a binary variable that captures the timing of an event. Can only be 0, 1 or missing. Can only have 1 date of event per ID.

{p 8 16 2}
{cmd:eventdate} a variable with the date of the event. Can only specify either {cmd:event} or {cmd:eventdate}. Can only have 1 {cmd:eventdate} per ID.

{p 8 16 2}
{cmd:ignore_panel} {cmd:tsperiods} will not check if {cmd:bys} and {cmd:datevar} uniquely identify observations. This option has to be used with {cmd:mevents}.

{p 8 16 2}
{cmd:mevents} by default {cmd:tsperiods} checks if there's a maximum of 1 events per ID. {cmd:mevents} (multiple events) turns off this warning.

{p 8 16 2}
{cmd:name} of new variable created. If no name is specified, the resulting variable is called {it:epoch}.

{p 8 16 2}
{cmd:overlap} generate dummy if epoch overlap with respect to the previous event. Can only be specified with {cmd:mevents}.
overlap is equal to one for periods before or at the relevant event if the number of periods between that period and the previous event is less than or equal to the number specified by the user.

{p 8 16 2}
{cmd:symmetric} by default {cmd:tsperiods} constructs epoch as follows (consider the case of t-0): [0,periods). If symmetric is specified then t-0 is constructed as [-periods/2, periods/2].

This is open source software distributed under the GPL-3 license. Ownership belongs to their respective authors.
For more documentation, examples and the most up to date code visit {browse "https://github.com/economic-research/open-ado/"}
This version is as at least as recent as commit: 3cd38782bb154133078fb2cd597d774dbda1c4e3

{title:Authors}

{p 4} Andres Jurado {p_end}
{p 4}jose_jurado_vadillo@brown.edu{p_end}
