%%%%%%%%%%%%%%%%%
% This is agharascv.cls (v1.0, 10 February 2018) written by
% Ayoub Ghrs (ayoub.ghrs@gmail.com)
% 
%% It may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.3 or later is part of all distributions of LaTeX
%% version 2003/12/01 or later.
%%%%%%%%%%%%%%%%
%\NeedsTeXFormat{LaTeX2e}[1995/12/01]

\ProvidesClass{agharascv}
\LoadClass{article}
\RequirePackage{geometry}
\RequirePackage{fontawesome,academicons}
\RequirePackage[skins]{tcolorbox}
\RequirePackage{enumitem}
\RequirePackage{dashrule}
\RequirePackage{multirow,tabularx}
%\RequirePackage{changepage}
\RequirePackage{hyperref}
%\RequirePackage{marginfix}
%\RequirePackage{xcolor}
\RequirePackage{graphicx}





\setlist{leftmargin=0.2in,labelsep=0.5em,nosep,itemsep=0.25\baselineskip,after=\vskip0.25\baselineskip}
\setlist[itemize]{label=\itemmarker}
\setlength{\medskipamount}{1pt}
\setlength{\bigskipamount}{4pt}
\setlength{\smallskipamount}{1pt}
\setlength{\parindent}{4pt}
\newcommand{\divider}{\textcolor{body!30}{\hdashrule{\linewidth}{0.1ex}{0.3ex}}}

\newcommand{\measuredivider}[2]{
\textcolor{body}{\hdashrule{#1\linewidth}{0.4ex}{0.3ex}}\textcolor{body!30}{\hdashrule{#2\linewidth}{0.4ex}{0.3ex}}\smallskip}


\newcommand{\itemmarker}{{\small\textbullet}}

\newcommand{\emailsymbol}{\faAt}
\newcommand{\phonesymbol}{\faPhone}
\newcommand{\homepagesymbol}{\faChain}
\newcommand{\locationsymbol}{\faMapMarker}
\newcommand{\linkedinsymbol}{\faLinkedin}
\newcommand{\twittersymbol}{\faTwitter}
\newcommand{\githubsymbol}{\faGithub}
\newcommand{\orcidsymbol}{\aiOrcid}
\newcommand{\mailsymbol}{\faEnvelope}
\newcommand{\flagsymbol}{\faFlagO}
\newcommand{\gmailsymbol}{\faGoogle}
\newcommand{\printinfo}[2]{\mbox{\textcolor{accent}{#1}\hspace{0.5em}#2\hspace{2em}}}

\newcommand{\name}[1]{\def\@name{#1}}
\newcommand{\tagline}[1]{\def\@tagline{#1}}
\newcommand{\photo}[2]{\def\@photo{#2}\def\@photodiameter{#1}}
\newcommand{\email}[2]{\printinfo{\emailsymbol}{\href{mailto:#2}{#1}}}
\newcommand{\gmail}[1]{\printinfo{\gmailsymbol}{\href{mailto:#1}{#1}}}
\newcommand{\mailaddress}[1]{\printinfo{\mailsymbol}{#1}}
\newcommand{\gmailaddress}[1]{\printinfo{\gmailsymbol}{#1}}
\newcommand{\phone}[1]{\printinfo{\phonesymbol}{#1}}
\newcommand{\homepage}[1]{\printinfo{\homepagesymbol}{\href{https://#1}{#1}}}
\newcommand{\twitter}[1]{\printinfo{\twittersymbol}{#1}}
\newcommand{\linkedin}[1]{\printinfo{\linkedinsymbol}{\href{http://linkedin.com/in/#1}{#1}}}
\newcommand{\github}[1]{\printinfo{\githubsymbol}{#1}}
\newcommand{\orcid}[1]{\printinfo{\orcidsymbol}{#1}}
\newcommand{\location}[1]{\printinfo{\locationsymbol}{#1}}
\newcommand{\flag}[1]{\printinfo{\flagsymbol}{#1}}
\newcommand{\personalinfo}[1]{\def\@personalinfo{#1}}

\newcommand{\makecvheader}{%
  %\begingroup
    \raggedright\color{emphasis}{\Large\bfseries{\@name}\par}
    \medskip
    {\large\bfseries\color{emphasis}\@tagline\par}
    \medskip
    {\footnotesize\bfseries\@personalinfo\par}
  %\endgroup
}

\newcommand{\cvsection}[2][]{%
\medskip
  {\color{heading}\large\bfseries\MakeUppercase{#2}}\\[-1ex]%
  {\color{heading}\rule{\linewidth}{1pt}\par}
}

\newcommand{\cvsubsection}[1]{%
  \smallskip%
  {\color{emphasis}\large\bfseries{#1}\par}\medskip
}

\newcommand{\cvevent}[5]{%
    \makebox[0.8\textwidth][l]{\textbf{\color{accent}#2}}\hfill {\footnotesize#4}
    \small
    \par
    {\hspace{1em}\faGraduationCap \hspace{0.5em} \color{emphasis}#1}\par
    % ?\vspace{-3pt}
    % noindent
    % \begin{minipage}{\linewidth}
        % \begin{minipage}[l]{0.6em}
        % \ 
        % \end{minipage}
        % \hfill     
        % \begin{minipage}[l]{0.9\linewidth}
            #5
        % \end{minipage}%
    % \end{minipage}
 }
\newcommand{\cvwork}[3]{%
    % \begin{minipage}[t]{0.7\textwidth}
    %     \makebox[0.5\linewidth][l]{{\color{emphasis}#1}\hspace{1em}}
    % \end{minipage}%
    % \begin{minipage}[t]{0.3\textwidth}
    % {\footnotesize #2}\par
    % \end{minipage}
    \makebox[0.5\linewidth][l]{{\color{emphasis}#1}}\hfill{\hspace{1em}\footnotesize#2}\par
    \vspace{2pt}
    {\faMapMarker\hspace{0.5em}\color{accent}#3}
}

\newcommand{\cvworkold}[3]{%
  \makebox[0.5\linewidth][l]{{\color{emphasis}#1}}\hfill{\hspace{1em}#2}\par
  {\faMapMarker\hspace{0.5em}\color{accent}#3}\par
  %\medskip
}
\newcommand{\cvproject}[3]{%
    
  \makebox[0.6\linewidth][l]{{\color{emphasis}#1}}
  \hfill
  \small{#3}\par
  \smallskip
  \textbf{\color{accent}#2}\par
    \smallskip
}
\newcommand{\publication}[3]{%
    \begin{minipage}[t]{0.1\textwidth}
        \small{#1}
    \end{minipage}%
    \vrule
    \hspace{0.5em}
    \begin{minipage}[t]{0.88\textwidth}
    \vspace{-6pt}
    \color{accent}#2\\
    \smallskip
    \makebox[0.6\linewidth][l]{{\small\color{emphasis}#3}}
    \end{minipage}
\medskip
}

\newcommand{\cvachievement}[3]{%
  \begin{tabularx}
  {\linewidth}{@{}p{2em} @{\hspace{1ex}} >{\raggedright\arraybackslash}X@{}}
  \multirow{2}{*}
  {\normalsize\color{accent}#1} & {\small\textbf{\textcolor{emphasis}#2}}\\
  & {\footnotesize #3}
  \end{tabularx}%
  \medkip
}

\newcommand{\cvtag}[1]{%
  \tikz\node[draw=body!30,rounded corners,inner xsep=0.5ex,inner ysep =0.2ex,text height=1.5ex,text depth=.2ex]{\footnotesize{#1}};
}

\newcommand{\cvskill}[2]{%
\textcolor{emphasis}{\small\textbf{#1}}\hfill
  \space{\small {\color{body!30}} #2}
  }
\newcommand{\link}[1]{
    \href{#1}{\faLink}
}
 

\AtBeginDocument{%
  \pagestyle{empty}
  \color{body}
  \raggedright
}
