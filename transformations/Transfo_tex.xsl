<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    <xsl:output encoding="UTF-8" method="text" indent="yes
        " omit-xml-declaration="yes"/>
    <xsl:template match="/">
        <!-- Compilation xelatex -->
        <xsl:text>\documentclass[12pt,onecolumn,twoside,a4paper]{memoir}
\usepackage[no-math]{fontspec}
\usepackage{ebgaramond}
\usepackage{graphicx}
\usepackage{amssymb}
\usepackage{xcolor}
\usepackage{polyglossia}% typographie française
\setdefaultlanguage{french}
\usepackage{microtype}
\usepackage{xspace}% gérer les espaces
\usepackage{amssymb}% symboles utiles (math, etc.)
\usepackage{ulem} % souligner
\usepackage{alltt} % environnement "télétype"
\usepackage{setspace} % réglage des interlignes etc.
\usepackage{fancyhdr} % hauts et pieds de page
\usepackage{multicol} % texte sur plusieurs colonnes
\usepackage{fancybox} % boîtes améliorées
\usepackage{array} % tableaux
\usepackage{multirow} % les tableaux améliorés
\usepackage{url} % écrire les url
\usepackage{appendix} % annexes améliorées
 \usepackage{geometry}
\usepackage{csquotes}
\usepackage{hyperref}
\usepackage{ragged2e}
\usepackage[backend=biber, bibstyle=verbose, backref=false, hyperref=false, citestyle=authortitle-ibid]{biblatex}
\DeclareFieldFormat{title}{\textit{#1}}
\DeclareFieldFormat{booktitle}{\textit{#1}}
\DeclareFieldFormat{journaltitle}{\textit{#1}}
\addbibresource{Biblio.bib}
%%%%%%%%
%%%%%%%%
%%%%%%%%%%%%%%%%
\usepackage{calc} 
\usepackage{fourier-orns} 
%%%% voir http://jacques-andre.fr/fontex/Fourier-orn.pdf
%%%%%%%
\pagestyle{fancyplain} \renewcommand{\chaptermark}[1]{% 
	\markboth{\chaptername\ \thechapter.\ #1}% 
	{\chaptername\ \thechapter.\ #1}} \renewcommand{\sectionmark}[1]{% 
	\markright{\thesection\ #1}}
% 
\lhead[\fancyplain{}{\bfseries\thepage}]%
{\fancyplain{}{\bfseries\nouppercase{\leftmark}}} 
\rhead[\fancyplain{}{\bfseries\nouppercase{\rightmark}}]%
{\fancyplain{}{\bfseries\thepage}} \fancyfoot{}
%%%%%%%%%%%%
%%%%%%%%%%%%
\newcommand{\phipaireblanche}
{\newpage{\pagestyle{empty}\cleardoublepage}} \newcommand{\phietc}{\textit{etc.}\xspace}
\newcommand{\phigg}[1]{\og #1 \fg}
%%%%%%%
\makeatletter
\newcommand{\finirphiimpaire}{\clearpage\if@twoside \ifodd\c@page
	\hbox{}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi} \makeatother
\newcommand{\phiimpaireblanche}{% 
	\newpage{\pagestyle{empty}\finirphiimpaire}}
\renewcommand{\baselinestretch}{1,2}%%% interligne
\makeatother
%%%%%%%
%%%%%%
%Style Chapitre établi par Vincent Zoonekynd : http://zoonek.free.fr/LaTeX/LaTeX_samples_chapter/0.html
\makeatletter
\setlength\midchapskip{7pt}
\makechapterstyle{VZ21}{
	\renewcommand\chapnamefont{\Large\scshape}
	\renewcommand\chapnumfont{\Large\scshape\centering}
	\renewcommand\chaptitlefont{\huge\bfseries\centering}
	\renewcommand\printchaptertitle[1]{%
		\setlength\tabcolsep{7pt}% used as indentation on both sides
		\settowidth\@tempdimc{\chaptitlefont ##1}%
		\setlength\@tempdimc{\textwidth-\@tempdimc-2\tabcolsep}%
		\chaptitlefont
		\ifdim\@tempdimc > 0pt\relax% one line
		\begin{tabular}{c}
			\toprule  ##1\\ \bottomrule
		\end{tabular}
		\else% two+ lines
		\begin{tabular}{%
				>{\chaptitlefont\arraybackslash}p{\textwidth-2\tabcolsep}}
			\toprule ##1\\ \bottomrule
		\end{tabular}
		\fi
	}
}
%%%%%%%%%%%%%%
%%%%% Pour la traduction %%%%%%%%
\usepackage[ widthliketwocolumns,
nocritical,
noeledsec,
noend,
nofamiliar,
noledgroup,
series={}
]{reledmac}
\usepackage{reledpar}
%%%%%%%
\setcounter{stanzaindentsrepetition}{1}
\setstanzaindents{0,0,0}
\AtEveryStopStanza{\vspace{1\baselineskip}}
\numberstanzatrue
\renewcommand{\thestanzaL}{\MakeUppercase{\roman{stanzaL}}}
%%%%%
\firstlinenum*{100000}
%%%%%%%
\setlength{\Lcolwidth}{.430\textwidth}
\setlength{\Rcolwidth}{.450\textwidth}
\columnsposition{C}
\setlength{\beforecolumnseparator}{0.035\textwidth}
\setlength{\aftercolumnseparator}{0.0001\textwidth}
\sidenotemargin{left}
%%%%% 
%%%%%%%%%%%%%%%%%
%%%%% 
\AtBeginDocument{\renewcommand{\abstractname}{}}
%%%%%%%%%%%%%%%%%
                \title{</xsl:text>
        <xsl:apply-templates select="/TEI/teiHeader[1]/fileDesc[1]/titleStmt[1]/title[1]"/>
        <xsl:text>}
                \author{</xsl:text>
        <xsl:apply-templates select="/TEI/teiHeader[1]/fileDesc[1]/titleStmt[1]/editor[1]"/>
        <xsl:text>}
                \date{\today}
                \begin{document}
            </xsl:text>
        <xsl:apply-templates select="/TEI/text[1]/body[1]"/>
        <xsl:text>\end{document}</xsl:text>
    </xsl:template>
    <!-- Métadonnées -->
    <xsl:template match="teiHeader"/>
    <!-- Données -->
    <xsl:template match="/TEI/text/body/div[@type = 'auctor']/head">
        <xsl:text>\section{</xsl:text>
        <xsl:apply-templates/>
        <xsl:text>}</xsl:text>
    </xsl:template>
    <xsl:template match="/TEI/text/body/div/div[@type = 'fabula']/head">
        <xsl:text>\subsection*{</xsl:text>
        <xsl:apply-templates/>
        <xsl:text>}</xsl:text>
    </xsl:template>
    <xsl:template match="/TEI/text/body/div/div[@type = 'fabula']/argument">
        <xsl:text>\begin{abstract}</xsl:text>
        <xsl:apply-templates/>
        <xsl:text>\end{abstract}</xsl:text>
    </xsl:template>
    <xsl:template match="p">
        <xsl:apply-templates/>
        <xsl:text>\par</xsl:text>
    </xsl:template>
    <xsl:template match="div[@type = 'fragmenta']">
        <xsl:text>\begin{pairs}</xsl:text>
        <xsl:apply-templates/>
        <xsl:text>\end{pairs}
	\Columns</xsl:text>
    </xsl:template>
    <xsl:template match="div[@type = 'latino_scriptum']">
        <xsl:text>\begin{Leftside}
			\beginnumbering
			\setcounter{stanzaL}{0}</xsl:text>
        <xsl:apply-templates/>
        <xsl:text>\endnumbering
		\end{Leftside}</xsl:text>
    </xsl:template>
    <xsl:template match="div[@type = 'translatio']">
        <xsl:text>\begin{Rightside}
			\beginnumbering
			\numberstanzafalse</xsl:text>
        <xsl:apply-templates/>
        <xsl:text>\endnumbering
		\end{Rightside}</xsl:text>
    </xsl:template>
    <xsl:template match="lg[@type = 'stanza']">
        <xsl:text> \stanza </xsl:text>
        <xsl:if test="descendant::div[@type = 'latino_scriptum']"><!-- Ne fonctionne pas... -->
            <xsl:text>\ledsidenote{\color{gray}{\textbf{</xsl:text>
            <xsl:value-of select="@source"/>
            <xsl:text>\vspace{-0,5cm}}}}</xsl:text>
        </xsl:if> 
        <xsl:for-each select="./l">
            <xsl:choose>
                <xsl:when test="position()=last()">
                    <xsl:text>
                     </xsl:text><xsl:apply-templates/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:apply-templates/><xsl:text> &amp;</xsl:text>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:for-each>
        <xsl:text> \&amp;</xsl:text>
    </xsl:template>
    <xsl:template match="stage">
        <xsl:apply-templates/>
        <xsl:text> &amp;</xsl:text>
    </xsl:template>
    <xsl:template match="note">
        <xsl:text>\footcite{</xsl:text>
        <xsl:apply-templates/>
        <xsl:text>}</xsl:text>
    </xsl:template>
    <xsl:template match="ref">
        <xsl:text>\cite{</xsl:text>
        <xsl:value-of select="@source"/>
        <xsl:text>}</xsl:text>
    </xsl:template>
    <xsl:template match="title">
        <xsl:text>\textit{</xsl:text>
        <xsl:apply-templates/>
        <xsl:text>}</xsl:text>
    </xsl:template>
    <xsl:template match="g[@type = 'lbrack']">
        <xsl:text>\lbrack </xsl:text>
    </xsl:template>
    <xsl:template match="g[@type = 'rbrack']">
        <xsl:text>\rbrack </xsl:text>
    </xsl:template>
</xsl:stylesheet>
