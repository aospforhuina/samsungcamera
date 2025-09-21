.class public Lr/f0;
.super Ljava/lang/Object;
.source "RoundedCornersParser.java"


# static fields
.field private static final a:Ls/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "nm"

    const-string v1, "r"

    const-string v2, "hd"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls/c$a;->a([Ljava/lang/String;)Ls/c$a;

    move-result-object v0

    sput-object v0, Lr/f0;->a:Ls/c$a;

    return-void
.end method

.method static a(Ls/c;Lh/h;)Lo/m;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v0

    move-object v3, v2

    .line 1
    :goto_0
    invoke-virtual {p0}, Ls/c;->k()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2
    sget-object v4, Lr/f0;->a:Ls/c$a;

    invoke-virtual {p0, v4}, Ls/c;->B(Ls/c$a;)I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 3
    invoke-virtual {p0}, Ls/c;->D()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ls/c;->o()Z

    move-result v1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p0, p1, v5}, Lr/d;->f(Ls/c;Lh/h;Z)Ln/b;

    move-result-object v3

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Ls/c;->u()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    goto :goto_1

    .line 7
    :cond_4
    new-instance v0, Lo/m;

    invoke-direct {v0, v2, v3}, Lo/m;-><init>(Ljava/lang/String;Ln/m;)V

    :goto_1
    return-object v0
.end method
