.class public final Ly2/l;
.super Ly2/a;
.source "EmailDoCoMoResultParser.java"


# static fields
.field private static final f:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "[a-zA-Z0-9@.!#$%&\'*+\\-/=?^_`{|}~]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Ly2/l;->f:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ly2/a;-><init>()V

    return-void
.end method

.method static r(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    sget-object v0, Ly2/l;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x40

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public bridge synthetic j(Lx2/b;)Ly2/u;
    .locals 0

    invoke-virtual {p0, p1}, Ly2/l;->s(Lx2/b;)Ly2/j;

    move-result-object p0

    return-object p0
.end method

.method public s(Lx2/b;)Ly2/j;
    .locals 8

    .line 1
    invoke-static {p1}, Ly2/z;->c(Lx2/b;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "MATMSG:"

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string p1, "TO:"

    const/4 v1, 0x1

    .line 3
    invoke-static {p1, p0, v1}, Ly2/a;->p(Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    return-object v0

    .line 4
    :cond_1
    array-length p1, v3

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_3

    aget-object v4, v3, v2

    .line 5
    invoke-static {v4}, Ly2/l;->r(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    return-object v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string p1, "SUB:"

    .line 6
    invoke-static {p1, p0, v1}, Ly2/a;->q(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    const-string p1, "BODY:"

    .line 7
    invoke-static {p1, p0, v1}, Ly2/a;->q(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    .line 8
    new-instance p0, Ly2/j;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Ly2/j;-><init>([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
