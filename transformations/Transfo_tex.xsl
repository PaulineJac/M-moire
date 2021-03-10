<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" exclude-result-prefixes="xs" version="2.0"
    xpath-default-namespace="http://www.tei-c.org/ns/1.0">
    <xsl:output encoding="UTF-8" method="text" indent="yes
        " omit-xml-declaration="yes"/>
    <xsl:template match="/">
        <xsl:text>\documentclass[12pt,onecolumn,twoside,a4paper]{memoir}
                \usepackage[utf8]{inputenc}
                \usepackage{pifont,graphicx}
                \usepackage[T1]{fontenc}
                \usepackage[Garamond]{mathdesign}
                \usepackage{amssymb}
                \usepackage[explicit]{titlesec}
                \usepackage{color}
                \usepackage[polutonikogreek, latin, francais,]{babel}% typographie française
                \usepackage{xspace}% gérer les espaces
                \usepackage[pdftex,table,svgnames]{xcolor} % la couleur
                \usepackage{amssymb}% symboles utiles (math, etc.)
                \usepackage{ulem} % souligner
                \usepackage{alltt} % environnement "télétype"
                \usepackage{setspace} % réglage des interlignes etc.
                \usepackage{fancyhdr} % hauts et pieds de page
                \usepackage{multicol} % texte sur plusieurs colonnes
                \usepackage{fancybox} % boîtes améliorées
                \usepackage{array} % tableaux
                \usepackage{pifont}
                \usepackage{tikz}
                \usepackage{multirow} % les tableaux améliorés
                \usepackage{float} % objets flottants (figures, ...)
                \usepackage{url} % écrire les url
                \usepackage{lettrine} % écrire des lettrines
                \usepackage{appendix} % annexes améliorées
                \usepackage{tikz,pgf} % écriture sur des courbes, etc.
                \usepackage{verse} % écrire des vers
                \usepackage{newtxtext,newtxmath}
                \usepackage{csquotes}
                \usepackage{hyperref}
                \usepackage[backend=biber, bibstyle=verbose, backref=false, hyperref=false, citestyle=authortitle-ibid]{biblatex}
                \addbibresource{/Users/Mac-Pauline/Documents/Texmf/bibtex/bib/Biblio.bib}
                \makeatletter
                %%%%%%%%
                %%%%Babel Grec%%%
                \newcommand*{\tg}[1]{\textgreek{#1}}
                %%%%%%%%%%%%%%%%
                \usepackage{calc} 
                \usepackage{fourier-orns} 
                %%%% voir http://jacques-andre.fr/fontex/Fourier-orn.pdf
                % mise en page 
                \usepackage[inner=3cm,top=4cm,outer=3cm,bottom=4cm]{geometry} %%%%%%%
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
                %%%%%%%
                % style des pages
                \pagestyle{fancyplain}
                %%%%%%%Style Chapitre établi par Vincent Zoonekynd : http://zoonek.free.fr/LaTeX/LaTeX_samples_chapter/0.html
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
                \makeatother
                \chapterstyle{VZ21}
                %%%%%%%%%%%%%%
                %Style section 
                \titleformat{\section}
                {\normalfont}{\thesection}{1em}{\MakeUppercase{#1}}
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
                \setlength{\Lcolwidth}{.530\textwidth}
                \setlength{\Rcolwidth}{.540\textwidth}
                \columnsposition{C}
                \setlength{\beforecolumnseparator}{0.035\textwidth}
                \setlength{\aftercolumnseparator}{0.0001\textwidth}
                \sidenotemargin{left}
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
        <xsl:text>\stanza </xsl:text>
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
    <!-- Pourquoi ce code n'est-il pas appliqué ? -->
    <xsl:template match="lg[@type='stanza']/@source">
        <xsl:text>\ledsidenote{\color{gray}{\textbf{\vspace{-0,5cm}</xsl:text>
        <xsl:value-of select="@source"/>
        <xsl:text>}}}</xsl:text>
    </xsl:template>
    <xsl:template match="l">
        <xsl:apply-templates/>
        <xsl:if test="position() != last()"> <!-- Cela ne fonctionne pas ... d'identification du noeud et d'espace en trop ... -->
            <xsl:text>&amp;*********************</xsl:text>
        </xsl:if>
    </xsl:template>
    <xsl:template match="title[@xml:lang = 'grc']">
        <xsl:text>\tg{\textit{</xsl:text>
        <xsl:apply-templates/>
        <xsl:text>}}</xsl:text>
    </xsl:template>
    <xsl:template match="ref">
        <xsl:text>\cite{</xsl:text>
        <xsl:value-of select="@source"/>
        <xsl:text>}</xsl:text>
    </xsl:template>
    <xsl:template match="g[@type = 'lbrack']">
        <xsl:text>\lbrack </xsl:text>
    </xsl:template>
    <xsl:template match="g[@type = 'rbrack']">
        <xsl:text>\rbrack </xsl:text>
    </xsl:template>
</xsl:stylesheet>
