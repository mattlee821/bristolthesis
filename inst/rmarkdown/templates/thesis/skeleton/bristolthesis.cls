% University of Bristol thesis templats
% Date: 15/11/2021
% Author: Matthew Lee, matthew.lee@bristol.ac.uk
%
% This template is adapted from thesidown: https://github.com/ismayc/thesisdown
% Bristol Uni thesis regulations: http://www.bristol.ac.uk/academic-quality/pg/pgrcode/annex4/
%

%%% Probably best to leave this bit as is
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{bristolthesis}[]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions\relax
\LoadClass{book}
\RequirePackage{fancyhdr}
\RequirePackage{fancyvrb}
\usepackage{ifxetex,ifluatex}
\usepackage{fixltx2e} % provides \textsubscript
\ifnum 0\ifxetex 1\fi\ifluatex 1\fi=0 % if pdftex
  \usepackage[T1]{fontenc}
  \usepackage[utf8]{inputenc}
\else % if luatex or xelatex
  \ifxetex
    \usepackage{mathspec}
    \usepackage{xltxtra,xunicode}
  \else
    \usepackage{fontspec}
  \fi
  \defaultfontfeatures{Mapping=tex-text,Scale=MatchLowercase}
  \newcommand{\euro}{€}
\fi
% use upquote if available, for straight quotes in verbatim environments
\IfFileExists{upquote.sty}{\usepackage{upquote}}{}
% use microtype if available
\IfFileExists{microtype.sty}{%
\usepackage{microtype}
\UseMicrotypeSet[protrusion]{basicmath} % disable protrusion for tt fonts
}{}
\usepackage{color}
%\newcommand{\VerbBar}{|}
%\newcommand{\VERB}{\Verb[commandchars=\\\{\}]}
\DefineVerbatimEnvironment{verbatim}{Verbatim}{xleftmargin=-1em}
\DefineVerbatimEnvironment{Highlighting}{Verbatim}{commandchars=\\\{\}}
% Add ',fontsize=\small' for more characters per line
\usepackage{framed}
\definecolor{shadecolor}{RGB}{248,248,248}
% \newenvironment{Shaded}{\begin{snugshade}}{\end{snugshade}}
% \newcommand{\KeywordTok}[1]{\textcolor[rgb]{0.13,0.29,0.53}{\textbf{{#1}}}}
% \newcommand{\DataTypeTok}[1]{\textcolor[rgb]{0.13,0.29,0.53}{{#1}}}
% \newcommand{\DecValTok}[1]{\textcolor[rgb]{0.00,0.00,0.81}{{#1}}}
% \newcommand{\BaseNTok}[1]{\textcolor[rgb]{0.00,0.00,0.81}{{#1}}}
% \newcommand{\FloatTok}[1]{\textcolor[rgb]{0.00,0.00,0.81}{{#1}}}
% \newcommand{\ConstantTok}[1]{\textcolor[rgb]{0.00,0.00,0.00}{{#1}}}
% \newcommand{\CharTok}[1]{\textcolor[rgb]{0.31,0.60,0.02}{{#1}}}
% \newcommand{\SpecialCharTok}[1]{\textcolor[rgb]{0.00,0.00,0.00}{{#1}}}
% \newcommand{\StringTok}[1]{\textcolor[rgb]{0.31,0.60,0.02}{{#1}}}
% \newcommand{\VerbatimStringTok}[1]{\textcolor[rgb]{0.31,0.60,0.02}{{#1}}}
% \newcommand{\SpecialStringTok}[1]{\textcolor[rgb]{0.31,0.60,0.02}{{#1}}}
% \newcommand{\ImportTok}[1]{{#1}}
% \newcommand{\CommentTok}[1]{\textcolor[rgb]{0.56,0.35,0.01}{\textit{{#1}}}}
% \newcommand{\DocumentationTok}[1]{\textcolor[rgb]{0.56,0.35,0.01}{\textbf{\textit{{#1}}}}}
% \newcommand{\AnnotationTok}[1]{\textcolor[rgb]{0.56,0.35,0.01}{\textbf{\textit{{#1}}}}}
% \newcommand{\CommentVarTok}[1]{\textcolor[rgb]{0.56,0.35,0.01}{\textbf{\textit{{#1}}}}}
% \newcommand{\OtherTok}[1]{\textcolor[rgb]{0.56,0.35,0.01}{{#1}}}
% \newcommand{\FunctionTok}[1]{\textcolor[rgb]{0.00,0.00,0.00}{{#1}}}
% \newcommand{\VariableTok}[1]{\textcolor[rgb]{0.00,0.00,0.00}{{#1}}}
% \newcommand{\ControlFlowTok}[1]{\textcolor[rgb]{0.13,0.29,0.53}{\textbf{{#1}}}}
% \newcommand{\OperatorTok}[1]{\textcolor[rgb]{0.81,0.36,0.00}{\textbf{{#1}}}}
% \newcommand{\BuiltInTok}[1]{{#1}}
% \newcommand{\ExtensionTok}[1]{{#1}}
% \newcommand{\PreprocessorTok}[1]{\textcolor[rgb]{0.56,0.35,0.01}{\textit{{#1}}}}
% \newcommand{\AttributeTok}[1]{\textcolor[rgb]{0.77,0.63,0.00}{{#1}}}
% \newcommand{\RegionMarkerTok}[1]{{#1}}
% \newcommand{\InformationTok}[1]{\textcolor[rgb]{0.56,0.35,0.01}{\textbf{\textit{{#1}}}}}
% \newcommand{\WarningTok}[1]{\textcolor[rgb]{0.56,0.35,0.01}{\textbf{\textit{{#1}}}}}
% \newcommand{\AlertTok}[1]{\textcolor[rgb]{0.94,0.16,0.16}{{#1}}}
% \newcommand{\ErrorTok}[1]{\textcolor[rgb]{0.64,0.00,0.00}{\textbf{{#1}}}}
% \newcommand{\NormalTok}[1]{{#1}}

\setlength{\emergencystretch}{3em}  % prevent overfull lines
\providecommand{\tightlist}{%
  \setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}}
% End of CII add

% This gives us rules below the headers
\AtBeginDocument{%
  \fancyhf{}
  \fancyhead[LE,RO]{\thepage}
	 \fancyhead[RE]{\slshape \nouppercase \leftmark} % This makes the headers on the RIGHT side pages be italic and use lowercase With Capitals When Specified. I dont think this works.
	\fancyhead[LO]{\slshape \nouppercase \rightmark} % This does the same thing to the LEFT side pages
  \pagestyle{fancy}

  \let\oldthebibliography=\thebibliography
  \let\endoldthebibliography=\endthebibliography
  \renewenvironment{thebibliography}[1]{
    \oldthebibliography{#1}
    \addcontentsline{toc}{chapter}{\bibname}
  }{\endoldthebibliography}

  \let\oldtheindex=\theindex
  \let\endoldtheindex=\endtheindex
  \renewenvironment{theindex}{
    \oldtheindex
    \addcontentsline{toc}{chapter}{\indexname}
  }{\endoldtheindex}
}

% Stolen from book.cls and modified
\let\RToldchapter\chapter
\renewcommand{\chapter}{\if@openright\RTcleardoublepage
		    \else\clearpage\fi
		    \thispagestyle{empty}%
		    \global\@topnum\z@
		    \@afterindentfalse
		    \secdef\@chapter\@schapter}

% Using this to actually show "Chapter 1" in TOC instead of "1"
\def\@chapter[#1]#2{\ifnum \c@secnumdepth >\m@ne
                       \if@mainmatter
                         \refstepcounter{chapter}%
                         \typeout{\@chapapp\space\thechapter.}%
                         \addcontentsline{toc}{chapter}%
                         {\@chapapp\space\thechapter:\space#1}%
                       \else
                         \addcontentsline{toc}{chapter}{#1}%
                       \fi
                    \else
                      \addcontentsline{toc}{chapter}{#1}%
                    \fi
                    \chaptermark{#1}%
                    \addtocontents{lof}{\protect\addvspace{10\p@}}%
                    \addtocontents{lot}{\protect\addvspace{10\p@}}%
                    \if@twocolumn
                      \@topnewpage[\@makechapterhead{#2}]%
                    \else
                      \@makechapterhead{#2}%
                      \@afterheading
                    \fi}

\newcommand{\RTcleardoublepage}{
	\clearpage\if@twoside \ifodd\c@page\else
	\thispagestyle{empty}\hbox{}\newpage
	\if@twocolumn\hbox{}\newpage\fi\fi\fi}

\let\RToldcleardoublepage\cleardoublepage
\renewcommand{\cleardoublepage}{\RTcleardoublepage}

%%% Margins
\usepackage[margin=1in]{geometry} % 1 inch margin across all sides
% \oddsidemargin 0truemm % add for printing 
% \evensidemargin 15truemm % add for printing 
%%

%% Defined terms
\def\university#1{\gdef \@university{#1}}
\def\faculty#1{\gdef \@faculty{#1}}
\def\school#1{\gdef \@school{#1}}
\def\group#1{\gdef \@group{#1}}
\def\wordcount#1{\gdef \@wordcount{#1}}
\def\logo#1{\gdef \@logo{#1}}
\def\degree#1{\gdef \@degree{#1}}
%%


\renewcommand\l@chapter[2]{%
  \ifnum \c@tocdepth >\m@ne
    \addpenalty{-\@highpenalty}%
    \vskip 1.0em \@plus\p@
    \setlength\@tempdima{1.5em}%
    \begingroup
      \parindent \z@ \rightskip \@pnumwidth
      \parfillskip -\@pnumwidth
      \leavevmode \bfseries
      \advance\leftskip\@tempdima
      \hskip -\leftskip
      #1\nobreak\normalfont
      \leaders\hbox{$\m@th \mkern \@dotsep mu\hbox{.}\mkern \@dotsep mu$}\hfill
      \nobreak\hb@xt@\@pnumwidth{\bfseries \hss #2}\par
      \penalty\@highpenalty
    \endgroup
  \fi}

%%% Preface pages
% in order

%% Title page
\renewcommand{\maketitle}{%
  {\pagestyle{empty}
  \fontsize{12}{14}\selectfont
  \begin{titlepage}
  \newpage
  \begin{center}
    \setcounter{page}{1}
    \includegraphics[scale=0.6] \@logo \\
    {\fontsize{14}{14}\selectfont \@title}
    \vfil
    \centerline{\hbox to \wd0 {\hbox{}\hrulefill\hbox{}}}
    \vfil
    \@author \\
    \@group \\
    \@school \\
    Faculty of \@faculty \\
    \@university
    \vfil
    \bigskip
    A dissertation submitted to the University of Bristol in accordance with the requirements for award of the degree of \@degree \ in the Faculty of \@faculty \\
    \vfil
    \bigskip
    {\fontsize{12}{14}\selectfont \lineskip .5em
    \begin{tabular}[t]{c}%
    \end{tabular}\par}
    \vskip 1em
    {\fontsize{12}{14}\selectfont \@school,\ \@date,\  Word Count: \@wordcount \par}
  \end{center}\par
  \end{titlepage}
  }
}

%% Abstract
\newenvironment{abstract}{%
  \if@twocolumn
    \@restonecoltrue\onecolumn
  \else
    \@restonecolfalse
  \fi
  \chapter*{Abstract}
  \fontsize{12}{14}\selectfont
}{\clearpage \if@restonecol\twocolumn\fi}%

%% COVID
\newenvironment{covid}{%
  \if@twocolumn
    \@restonecoltrue\onecolumn
  \else
    \@restonecolfalse
  \fi
  \chapter*{COVID-19 statement}
  \fontsize{12}{14}\selectfont
}{\clearpage \if@restonecol\twocolumn\fi}%

%% Acknowledgments
\newenvironment{acknowledgements}{%
  \if@twocolumn
    \@restonecoltrue\onecolumn
  \else
    \@restonecolfalse
  \fi
  \chapter*{Acknowledgements}
  \fontsize{12}{14}\selectfont
}{\clearpage \if@restonecol\twocolumn\fi}%

%% Declaration
\newenvironment{declaration}{%
  \if@twocolumn
    \@restonecoltrue\onecolumn
  \else
    \@restonecolfalse
  \fi
  \chapter*{Declaration}
  \fontsize{12}{14}\selectfont
}{\clearpage \if@restonecol\twocolumn\fi}%

%% Abbreviations/accronyms
\newenvironment{abbreviations}{%
  \if@twocolumn
    \@restonecoltrue\onecolumn
  \else
    \@restonecolfalse
  \fi
  \chapter*{Abbreviations}
  \fontsize{12}{14}\selectfont
}{\clearpage \if@restonecol\twocolumn\fi}%

%% Publications
\newenvironment{publications}{%
  \if@twocolumn
    \@restonecoltrue\onecolumn
  \else
    \@restonecolfalse
  \fi
  \chapter*{Research Output}
  \fontsize{12}{14}\selectfont
}{\clearpage \if@restonecol\twocolumn\fi}%

%% Outline
\newenvironment{outline}{%
  \if@twocolumn
    \@restonecoltrue\onecolumn
  \else
    \@restonecolfalse
  \fi
  \chapter*{Outline}
  \fontsize{12}{14}\selectfont
}{\clearpage \if@restonecol\twocolumn\fi}%

%% Contributions
\newenvironment{contributions}{%
  \if@twocolumn
    \@restonecoltrue\onecolumn
  \else
    \@restonecolfalse
  \fi
  \chapter*{Contributions}
  \fontsize{12}{14}\selectfont
}{\clearpage \if@restonecol\twocolumn\fi}%


%%% Other things
\renewcommand{\title}[1]{\def\@title{#1}}
\newcommand{\Abstract}[1]{\def\@Abstract{#1}}
\newcommand{\COVID}[1]{\def\@COVID{#1}}
\newcommand{\Acknowledgements}[1]{\def\@Acknowledgements{#1}}
\newcommand{\Publications}[1]{\def\@Publications{#1}}
\newcommand{\Contributions}[1]{\def\@Contributions{#1}}
\newcommand{\Declaration}[1]{\def\@Declaration{#1}}
\newcommand{\Abbreviations}[1]{\def\@Abbreviations{#1}}
\newcommand{\Outline}[1]{\def\@Outline{#1}}

