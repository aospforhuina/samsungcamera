.class public final Lz2/b;
.super Ly2/z;
.source "IoTResultParser.java"


# static fields
.field private static final f:Ljava/util/regex/Pattern;

.field private static final g:Ljava/util/regex/Pattern;

.field private static final h:Ljava/util/regex/Pattern;

.field private static final i:Ljava/util/regex/Pattern;

.field private static final j:Ljava/util/regex/Pattern;

.field private static final k:Ljava/util/regex/Pattern;

.field private static final l:Ljava/util/regex/Pattern;

.field private static final m:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "^(Z:)\\p{Alnum}+(\\$I:)\\p{Alnum}+(\\%SN:)\\p{Alnum}{5}(A)[1-5]{1}\\p{Alnum}{7}$"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lz2/b;->f:Ljava/util/regex/Pattern;

    const-string v0, "^(SN:)[0-9]{1}(0)[0-9]{1}(1)[0-9]{6}(\\%E:)\\p{Alnum}{12}"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lz2/b;->g:Ljava/util/regex/Pattern;

    const-string v0, ".*Z[:\\$]{1}.*(\\$I:)\\p{XDigit}{18}.*"

    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lz2/b;->h:Ljava/util/regex/Pattern;

    const-string v0, ".*Z(\\$I:)\\p{XDigit}{18}.*"

    .line 4
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lz2/b;->i:Ljava/util/regex/Pattern;

    const-string v0, "^(zws2dsk:){1}(\\p{Digit}{5}-){7}\\p{Digit}{5}$"

    .line 5
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lz2/b;->j:Ljava/util/regex/Pattern;

    const-string v0, "^(90)\\p{Digit}{88,}"

    .line 6
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lz2/b;->k:Ljava/util/regex/Pattern;

    const-string v0, "[\r\n]"

    .line 7
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lz2/b;->l:Ljava/util/regex/Pattern;

    const-string v0, "https://qr.samsungiots.cn"

    const-string v1, "https://qrd.samsungiots.cn"

    const-string v2, "https://qr.samsungiots.com"

    const-string v3, "https://qrd.samsungiots.com"

    .line 8
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lz2/b;->m:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ly2/z;-><init>()V

    return-void
.end method

.method private static p(Ljava/lang/String;)Z
    .locals 5

    .line 1
    sget-object v0, Lz2/b;->m:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    invoke-virtual {p0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private static q(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "https://spotted.smartthings.com"

    .line 2
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method private static r(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "(MN)"

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "(SN)"

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "(MAC)"

    .line 4
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "(PIN)"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public bridge synthetic j(Lx2/b;)Ly2/u;
    .locals 0

    invoke-virtual {p0, p1}, Lz2/b;->s(Lx2/b;)Lz2/a;

    move-result-object p0

    return-object p0
.end method

.method public s(Lx2/b;)Lz2/a;
    .locals 1

    .line 1
    invoke-virtual {p1}, Lx2/b;->b()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_c

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    sget-object v0, Lz2/b;->l:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4
    sget-object v0, Lz2/b;->f:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance p1, Lz2/a;

    sget-object v0, Lz2/c;->b:Lz2/c;

    invoke-direct {p1, p0, v0}, Lz2/a;-><init>(Ljava/lang/String;Lz2/c;)V

    return-object p1

    .line 6
    :cond_1
    sget-object v0, Lz2/b;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    new-instance p1, Lz2/a;

    sget-object v0, Lz2/c;->c:Lz2/c;

    invoke-direct {p1, p0, v0}, Lz2/a;-><init>(Ljava/lang/String;Lz2/c;)V

    return-object p1

    .line 8
    :cond_2
    sget-object v0, Lz2/b;->j:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    new-instance p1, Lz2/a;

    sget-object v0, Lz2/c;->f:Lz2/c;

    invoke-direct {p1, p0, v0}, Lz2/a;-><init>(Ljava/lang/String;Lz2/c;)V

    return-object p1

    .line 10
    :cond_3
    sget-object v0, Lz2/b;->k:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    new-instance p1, Lz2/a;

    sget-object v0, Lz2/c;->g:Lz2/c;

    invoke-direct {p1, p0, v0}, Lz2/a;-><init>(Ljava/lang/String;Lz2/c;)V

    return-object p1

    .line 12
    :cond_4
    sget-object v0, Lz2/b;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lz2/b;->i:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 13
    :cond_5
    invoke-static {p0}, Lz2/b;->r(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 14
    new-instance p1, Lz2/a;

    sget-object v0, Lz2/c;->k:Lz2/c;

    invoke-direct {p1, p0, v0}, Lz2/a;-><init>(Ljava/lang/String;Lz2/c;)V

    return-object p1

    .line 15
    :cond_6
    invoke-static {p0}, Lz2/b;->p(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16
    new-instance p1, Lz2/a;

    sget-object v0, Lz2/c;->a:Lz2/c;

    invoke-direct {p1, p0, v0}, Lz2/a;-><init>(Ljava/lang/String;Lz2/c;)V

    return-object p1

    .line 17
    :cond_7
    invoke-static {p0}, Lz2/b;->q(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 18
    new-instance p1, Lz2/a;

    sget-object v0, Lz2/c;->l:Lz2/c;

    invoke-direct {p1, p0, v0}, Lz2/a;-><init>(Ljava/lang/String;Lz2/c;)V

    return-object p1

    :cond_8
    const-string v0, "https://www.smartthings.com/applink"

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 20
    new-instance p1, Lz2/a;

    sget-object v0, Lz2/c;->m:Lz2/c;

    invoke-direct {p1, p0, v0}, Lz2/a;-><init>(Ljava/lang/String;Lz2/c;)V

    return-object p1

    :cond_9
    const-string v0, "MT:"

    .line 21
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 22
    new-instance p1, Lz2/a;

    sget-object v0, Lz2/c;->n:Lz2/c;

    invoke-direct {p1, p0, v0}, Lz2/a;-><init>(Ljava/lang/String;Lz2/c;)V

    :cond_a
    return-object p1

    .line 23
    :cond_b
    :goto_0
    new-instance p1, Lz2/a;

    sget-object v0, Lz2/c;->d:Lz2/c;

    invoke-direct {p1, p0, v0}, Lz2/a;-><init>(Ljava/lang/String;Lz2/c;)V

    :cond_c
    :goto_1
    return-object p1
.end method
