.class public final Ly2/k0;
.super Ly2/z;
.source "URLTOResultParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ly2/z;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic j(Lx2/b;)Ly2/u;
    .locals 0

    invoke-virtual {p0, p1}, Ly2/k0;->p(Lx2/b;)Ly2/i0;

    move-result-object p0

    return-object p0
.end method

.method public p(Lx2/b;)Ly2/i0;
    .locals 2

    .line 1
    invoke-static {p1}, Ly2/z;->c(Lx2/b;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "urlto:"

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "URLTO:"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/16 p1, 0x3a

    const/4 v1, 0x6

    .line 3
    invoke-virtual {p0, p1, v1}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    if-gez p1, :cond_1

    return-object v0

    :cond_1
    if-gt p1, v1, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0, v1, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 6
    new-instance p1, Ly2/i0;

    invoke-direct {p1, p0, v0}, Ly2/i0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
