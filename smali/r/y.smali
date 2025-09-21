.class Lr/y;
.super Ljava/lang/Object;
.source "MergePathsParser.java"


# static fields
.field private static final a:Ls/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "nm"

    const-string v1, "mm"

    const-string v2, "hd"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls/c$a;->a([Ljava/lang/String;)Ls/c$a;

    move-result-object v0

    sput-object v0, Lr/y;->a:Ls/c$a;

    return-void
.end method

.method static a(Ls/c;)Lo/i;
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move-object v1, v0

    .line 1
    :goto_0
    invoke-virtual {p0}, Ls/c;->k()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2
    sget-object v3, Lr/y;->a:Ls/c$a;

    invoke-virtual {p0, v3}, Ls/c;->B(Ls/c$a;)I

    move-result v3

    if-eqz v3, :cond_2

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    .line 3
    invoke-virtual {p0}, Ls/c;->C()V

    .line 4
    invoke-virtual {p0}, Ls/c;->D()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ls/c;->o()Z

    move-result v2

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p0}, Ls/c;->r()I

    move-result v1

    invoke-static {v1}, Lo/i$a;->a(I)Lo/i$a;

    move-result-object v1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Ls/c;->u()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 8
    :cond_3
    new-instance p0, Lo/i;

    invoke-direct {p0, v0, v1, v2}, Lo/i;-><init>(Ljava/lang/String;Lo/i$a;Z)V

    return-object p0
.end method
