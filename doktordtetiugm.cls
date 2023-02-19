%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Version#01 2023
%% Wijaya Y. Atmaja
%% wijayayatmaja@gmail.com
%%
%% References:
%% (Pedoman Penulisan DIsertasi FT UGM 2019)
%% (Canggih,2018)
%% (www.latextemplates.com)
%% (stackoverflow.com)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%======================================
%% Initial Code
%======================================
\NeedsTeXFormat{LaTeX2e}
\RequirePackage[bahasa]{babel} % language
\RequirePackage{etoolbox}% conditional statement
\RequirePackage{indentfirst}
\RequirePackage{setspace}
\RequirePackage{times}% font
\RequirePackage[T1]{fontenc}% quotation
\RequirePackage{graphicx}
\RequirePackage{calc}%Simple arithmetic lib

%======================================
%% Class & Package Loading
%======================================
\LoadClass[12pt]{report}  % this class is based on the report class
\usepackage{geometry}% easy layouting
\usepackage[hidelinks]{hyperref}% hyperlink
\usepackage{tocloft}% edit font toc
\usepackage{fancyhdr}% page number
\usepackage[cmex10]{amsmath}
\usepackage{amssymb}
\usepackage{cite}
\usepackage{multirow}
\usepackage{titlesec}
\usepackage{ragged2e}% text alignment
\usepackage{algorithmic}
\usepackage{algorithm}
\usepackage{listings}
\usepackage{color}
\usepackage{url}
\usepackage{ifthen}
\usepackage{forloop}
\usepackage{longtable}
\bibliographystyle{IEEEtran}
\usepackage{enumitem}
\setlist{nosep}
\usepackage{setspace}
\usepackage{caption}
\captionsetup{labelsep=period}
\usepackage{float}
%---------------------------------------
\usepackage{esvect}
\usepackage{pdfpages}
\usepackage{notoccite}
\usepackage{tikz}
\def\checkmark{\tikz\fill[scale=0.4](0,.35) -- (.25,0) -- (1,.7) -- (.25,.15) -- cycle;}
\setlength{\cftchapnumwidth}{2em}
\newcommand{\N}{\mathbb{N}}
\newcommand{\Z}{\mathbb{Z}}
\usepackage{blkarray, bigstrut}
\usepackage{bm}
\newcommand{\acronym}[1]{\mbox{\textsc{#1}}}
\usepackage{rotating}
\newcommand{\R}{\mathbb{R}}
\usepackage[none]{hyphenat}
\usepackage[normalem]{ulem}
\usepackage{xcolor}
\usepackage{colortbl}
\definecolor{bleudefrance}{rgb}{0.19, 0.55, 0.91}
\usepackage{array,makecell}
\usepackage[pages=some]{background}
\usepackage[page,toc,titletoc,title,header]{appendix}
\usepackage{minitoc}
\usepackage{lipsum}
\usepackage{textcase}
\usepackage{everypage}
\AddEverypageHook{\raisebox{1in}[0pt][0pt]{\hypertarget{pagetop.\thepage}{}}}
\newcommand*{\phantompageref}{\def\@currentHref{pagetop.\thepage}}
\newcommand*\bigcdot{\mathpalette\bigcdot@{.5}}
\newcommand*\bigcdot@[2]{\mathbin{\vcenter{\hbox{\scalebox{#2}{$\m@th#1\bullet$}}}}}

%======================================
%% Localise the Strings
%======================================
% define new commands
\newcommand{\listappendixname}{DAFTAR LAMPIRAN}%
\newcommand{\nomenclaturename}{DAFTAR ARTI LAMBANG DAN SINGKATAN}%
\newcommand{\acknowledgmentname}{HALAMAN PERSEMBAHAN}%
\newcommand{\approvalpage}{HALAMAN PERSETUJUAN}
\newcommand{\approvalpagename}{HALAMAN PERSETUJUAN}
\newcommand{\statementname}{PERNYATAAN PROMOVENDUS}
\newcommand{\dedicationpage}{HALAMAN SETELAH HALAMAN JUDUL}

% redefine commands
\addto\captionsbahasa{%
	\renewcommand{\prefacename}{PRAKATA}%
	\renewcommand{\contentsname}{DAFTAR ISI}%
	\renewcommand{\listfigurename}{DAFTAR GAMBAR}%
	\renewcommand{\listtablename}{DAFTAR TABEL}%
	\renewcommand{\abstractname}{ABSTRAK}%
	\renewcommand{\partname}{BAGIAN}%
	\renewcommand{\chaptername}{BAB}%
	\renewcommand{\appendixname}{LAMPIRAN}%
	\renewcommand{\refname}{DAFTAR PUSTAKA}%
	\renewcommand{\bibname}{DAFTAR PUSTAKA}%
	\renewcommand{\indexname}{Indek}%
	\renewcommand{\figurename}{Gambar}%
	\renewcommand{\tablename}{Tabel}%
	\renewcommand{\pagename}{Halaman}%
}

%======================================
%% General Page Layout
%======================================
\geometry{
	a4paper,
	papersize={21cm,29.7cm},
	top=4cm,
	left=4cm,
	right=3cm,
	bottom=3cm
}
\setlength{\parindent}{0.8cm}
\setlength{\parskip}{6pt}
\setlength{\footskip}{1.5cm} 
\setlength{\topskip}{1ex}
\linespread{1.45}
%======================================
%%  Information Setup
%======================================
% Author info
\renewcommand*{\author}[2]{
	\newcommand{\@authorName}{#1} 
	\newcommand{\@authorID}{#2}
}
% Title info
\renewcommand*{\title}[1]{\renewcommand{\@title}{#1}}
% Campus info
\newcommand{\@university}{Universitas Gadjah Mada}
\newcommand{\@facultyIna}{Fakultas Teknik}
\newcommand{\@departmentIna}{Departemen Teknik Elektro dan Teknologi Informasi}
\newcommand{\@graduateIna}{Program Studi Doktor Teknik Elektro}
\newcommand{\@city}{Yogyakarta}
\newcommand*{\yearsubmit}[1]{\newcommand{\@yearsubmit}{#1}}
%======================================
%% Cover Page
%======================================
\newcommand{\printcover}[1]{
	\newgeometry{left=3cm,top=3cm,bottom=3cm,right=3cm}
	\thispagestyle{empty}%
	\setcounter{page}{1}
	\pagenumbering{roman}
	\begin{center}
		\begin{singlespacing}
			\MakeUppercase{\textbf{
				\fontsize{14pt}{\baselineskip}\selectfont\@title\\
			}}
			\vfill
			\textbf{DISERTASI}\\
			\vfill
			\includegraphics[width=0.33\textwidth]{#1}
			\vfill
			\textbf{
				\@authorName \\ \vspace{0.12cm}
				\@authorID \\
			}
			\vfill
			\textbf{
				\MakeUppercase{\@graduateIna} \\ 
				\vspace{0.11cm}
				\MakeUppercase{\@facultyIna} \\
				\vspace{0.11cm}
				\MakeUppercase{\@university} \\
				\vspace{0.11cm}
				\MakeUppercase{\@city} \\
				\@yearsubmit	
			}
		\end{singlespacing}
	\end{center}
}
%======================================
%% Page After Cover
%======================================
\newcommand{\pageaftercover}{
	\chapter*{}
	\newgeometry{left=3.5cm,top=3cm,bottom=3cm,right=2.5cm}
	\fancyhf{}
	\fancyfoot[C]{\thepage}
	\begin{center}
		\begin{singlespacing}
			\MakeUppercase{\textbf{
				\fontsize{14pt}{\baselineskip}\selectfont\@title\\
			}}
			\vfill
			\textbf{Disertasi untuk memperoleh gelar Doktor}\\
			\vfill
			\textbf{
				\@authorName \vspace{0.12cm}\\
				\@authorID \\
			}
			\vfill
			\textbf{
				Dipertahankan di hadapan Tim Penguji\\
				pada Program Studi Doktor Teknik Elektro\\	
				\@facultyIna\\
				\vspace{0.11cm}
				{\@university} \\
				\vspace{0.11cm}
				Pada tanggal: 1 Juli 2023\\
			}
		\end{singlespacing}			
	\end{center}
	\phantompageref
	\addcontentsline{toc}{chapter}{HALAMAN SETELAH HALAMAN JUDUL}
}

%======================================
%% Approval Page
%======================================
\newcommand{\chapterapproval}[1]{
	\phantomsection
	\newgeometry{right=3cm,left=4cm,top=4cm,bottom=3cm}
	\chapter*{\approvalpagename}%
	\input{#1}
	% \addcontentsline{toc}{chapter}{\approvalpagename}
}

%======================================
%% Statement Page
%======================================
\newcommand{\chapterstatement}[1]{
	\phantomsection
	\newgeometry{right=3cm,left=4cm,top=4cm,bottom=3cm}
	\chapter*{\statementname}%
	\input{#1}
	\phantompageref
	\addcontentsline{toc}{chapter}{\statementname}
}

%======================================
%% Scanned JPG Endorsement Page
%======================================
\newcommand{\printendorsementjpg}[1]{
	\chapter*{}
	\fancyhf{}
	\fancyfoot[C]{\thepage}
	\begin{center}
	\vspace*{-4cm}
	\noindent\makebox[\textwidth]{\includegraphics[width=\paperwidth]{#1}}
	\end{center}
	\phantompageref
	\addcontentsline{toc}{chapter}{\approvalpage}
	\clearpage
}

%======================================
%% Preface
%======================================
\newcommand{\chapterpreface}[1]{
	\restoregeometry% Restore Geometry
	\chapter*{\prefacename}%
	\phantompageref
	\addcontentsline{toc}{chapter}{\prefacename}
	\input{#1}
	
}

%======================================
%% Nomenclature
%======================================
\newcommand{\chapternomenclature}[1]{
	\chapter*{\nomenclaturename}
	\phantompageref
	\addcontentsline{toc}{chapter}{\nomenclaturename}	
	\input{#1}
}

%======================================
%% Abstract
%======================================
\newcommand{\chapterabstract}[1]{
	\newgeometry{right=3cm,left=4cm,top=4cm,bottom=3cm}
	\chapter*{ABSTRACT}
	\input{#1}
	\phantompageref
	\addcontentsline{toc}{chapter}{ABSTRACT}
}

%======================================
%% Abstrak
%======================================
\newcommand{\chapterabstrak}[1]{
	% \phantomsection
	\newgeometry{right=3cm,left=4cm,top=4cm,bottom=3cm}
	\chapter*{ABSTRAK}
	\input{#1}
	\phantompageref
	\addcontentsline{toc}{chapter}{ABSTRAK}	
}

%======================================
%% Table of Contents
%% List of Figures and Tables
%======================================
% Reduce the spaces
\setlength{\cftbeforechapskip}{1.45pt}
\setlength\cftaftertoctitleskip{27pt}
\setlength\cftafterloftitleskip{27pt}
\setlength\cftafterlottitleskip{27pt}
%
\setcounter{tocdepth}{3}
% Put dots for chapter entries
\renewcommand{\cftchapleader}{\cftdotfill{0.5}}
\renewcommand{\cftfigleader}{\cftdotfill{0.5}}
\renewcommand{\cfttableader}{\cftdotfill{0.5}}
\renewcommand{\cftsecdotsep}{0.5}
\renewcommand{\cftsubsecdotsep}{0.5}
\renewcommand{\cftsubsubsecdotsep}{0.5}
% set font chapter
\renewcommand\cftchapfont{\mdseries}
\renewcommand\cftchappagefont{\mdseries}%
% Modified list entries in TOC, LOT, LOF
\renewcommand{\cftchappresnum}{\chaptername \space}
\renewcommand\cfttabpresnum{\tablename \space}
\renewcommand\cftfigpresnum{\figurename \space}
\AtBeginDocument{
	\addtolength\cftchapnumwidth{\widthof{\bfseries \chaptername }}
	\addtolength\cfttabnumwidth{\widthof{\bfseries \tablename }}
	\addtolength\cftfignumwidth{\widthof{\bfseries \figurename }}
}

% Adding entry to TOC
\newcommand{\thetoc}{
	\newpage
	\phantomsection
	\phantompageref
	\addcontentsline{toc}{chapter}{\contentsname}
}
% Adding entry to LOT
\newcommand{\thelot}{
	\newpage
	\phantomsection
	\phantompageref
	\addcontentsline{toc}{chapter}{\listtablename}
}
% Adding entry to LOF
\newcommand{\thelof}{
	\newpage
	\phantomsection
	\phantompageref
	\addcontentsline{toc}{chapter}{\listfigurename}
}
% Put title of TOC, LOF, and LOT in top-center page
\AtBeginDocument{
	\renewcommand{\cfttoctitlefont}{\vspace{-2.5cm}\hfill\bfseries\fontsize{14pt}{14pt}\selectfont}
	\renewcommand{\cftaftertoctitle}{\hfill}
	\renewcommand{\cftlottitlefont}{\vspace{-2.5cm}\hfill\bfseries\fontsize{14pt}{14pt}\selectfont}
	\renewcommand{\cftafterlottitle}{\hfill}
	\renewcommand{\cftloftitlefont}{\vspace{-2.5cm}\hfill\bfseries\fontsize{14pt}{14pt}\selectfont}
	\renewcommand{\cftafterloftitle}{\hfill}
}

%======================================
%% Tables and Figures
%======================================
% Give padding in tabular environment
\renewcommand{\arraystretch}{1.45}

%======================================
%% Misc Styling
%======================================
%Source code style
\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}

\lstdefinestyle{mystyle}{ 
	commentstyle=\color{codegreen},
	keywordstyle=\color{magenta},
	numberstyle=\tiny\color{codegray},
	stringstyle=\color{codepurple},
	basicstyle=\small,
	breakatwhitespace=false,         
	breaklines=true,                 
	captionpos=b,                    
	keepspaces=true,                 
	numbers=left,                    
	numbersep=5pt,                  
	showspaces=false,                
	showstringspaces=false,
	showtabs=false,                  
	tabsize=2
}
\lstset{style=mystyle}


%======================================
%% Chapters and Sections
%======================================
% set page number style
\AtBeginDocument{
	\fancyhf{}
	\fancyhead[R]{\thepage}
	\renewcommand{\headrulewidth}{0pt}
	\pagestyle{fancy}
	\setlength{\parindent}{0.8cm}
}
% depth of toc
\setcounter{secnumdepth}{3}
% set numbering style
\renewcommand \thepart {\@Roman\c@part}
\renewcommand \thechapter {\@Roman\c@chapter}
\renewcommand \thesection {\@arabic\c@chapter.\@arabic\c@section}
\renewcommand\thesubsection {\@arabic\c@chapter.\@arabic\c@section.\@arabic\c@subsection}

% set figure, table, and equation style
\@addtoreset {equation}{chapter}
\renewcommand\theequation
{\ifnum \c@chapter>\z@ \@arabic\c@chapter-\fi \@arabic\c@equation}
\renewcommand \thefigure
{\ifnum \c@chapter>\z@ \@arabic\c@chapter.\fi \@arabic\c@figure}
\renewcommand \thetable
{\ifnum \c@chapter>\z@ \@arabic\c@chapter.\fi \@arabic\c@table}

% Section style
\titlespacing\section{0pt}{12pt plus 4pt minus 2pt}{0pt plus 2pt minus 2pt}
\titlespacing\subsection{0pt}{12pt plus 4pt minus 2pt}{0pt plus 2pt minus 2pt}
\titlespacing\subsubsection{0pt}{12pt plus 4pt minus 2pt}{0pt plus 2pt minus 2pt}
\titleformat*{\section}{\raggedright\normalfont\normalsize\bfseries}
\titleformat*{\subsection}{\raggedright\normalfont\normalsize\bfseries}
\titleformat*{\subsubsection}{\raggedright\normalfont\normalsize\bfseries}


% Starting the main matter	
\newcommand{\startmain}{
	\clearpage
	\setcounter{page}{1}
	\pagenumbering{arabic}
	\nopagebreak
	\setlength{\parindent}{0.8cm}
}
	

% Main chapter head styling
\renewcommand{\@makechapterhead}[1]{%   
	{\parindent \z@ \centering \bfseries
	\fontsize{14pt}{16pt}\selectfont
	\chaptername \space \thechapter
	\par\nobreak
	\MakeUppercase{#1}\par\nobreak
	\vskip 20\p@
}}

% Other chapter head styling
\renewcommand{\@makeschapterhead}[1]{%
	{\parindent \z@ \centering \bfseries
		\fontsize{14pt}{16pt}\selectfont
		\par\nobreak 
		 \MakeUppercase{#1}\par\nobreak 
		 \vskip 20\p@ 
}}

% References
\newcommand{\thereferences}{
	\phantomsection
	\phantompageref
	\addcontentsline{toc}{chapter}{\bibname}
	\singlespacing
	\nopagebreak
}

% Appendix 1
\newcommand{\chapterappendixone}[1]{
	\renewcommand{\appendixname}{Lampiran 1: Algorithm}
	\let\MakeUppercase\relax
	\chapter*{LAMPIRAN\protect\\ \vspace*{7pt} \appendixname}
	\phantompageref
	\addcontentsline{toc}{chapter}{LAMPIRAN}
	\addcontentsline{toc}{chapter}{\appendixname}
	\setcounter{page}{1}
	\renewcommand{\thepage}{L-\arabic{page}}
	\input{#1}
}
% Appendix 2
\newcommand{\chapterappendixtwo}[1]{
	\renewcommand{\appendixname}{Lampiran 2: Matriks dan Kode Program}
	\let\MakeUppercase\relax
	\chapter*{\appendixname}
	\phantompageref
	\addcontentsline{toc}{chapter}{\appendixname}	
	\input{#1}
}

