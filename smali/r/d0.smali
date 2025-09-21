.class Lr/d0;
.super Ljava/lang/Object;
.source "RectangleShapeParser.java"


# static fields
.field private static final a:Ls/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "nm"

    const-string v1, "p"

    const-string v2, "s"

    const-string v3, "r"

    const-string v4, "hd"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls/c$a;->a([Ljava/lang/String;)Ls/c$a;

    move-result-object v0

    sput-object v0, Lr/d0;->a:Ls/c$a;

    return-void
.end method

.method static a(Ls/c;Lh/h;)Lo/k;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move-object v4, v3

    move-object v5, v4

    move-object v6, v5

    move v7, v1

    .line 1
    :goto_0
    invoke-virtual {p0}, Ls/c;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2
    sget-object v0, Lr/d0;->a:Ls/c$a;

    invoke-virtual {p0, v0}, Ls/c;->B(Ls/c$a;)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {p0}, Ls/c;->D()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Ls/c;->o()Z

    move-result v7

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p0, p1}, Lr/d;->e(Ls/c;Lh/h;)Ln/b;

    move-result-object v6

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {p0, p1}, Lr/d;->i(Ls/c;Lh/h;)Ln/f;

    move-result-object v5

    goto :goto_0

    .line 7
    :cond_3
    invoke-static {p0, p1}, Lr/a;->b(Ls/c;Lh/h;)Ln/m;

    move-result-object v4

    goto :goto_0

    .line 8
    :cond_4
    invoke-virtual {p0}, Ls/c;->u()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 9
    :cond_5
    new-instance p0, Lo/k;

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lo/k;-><init>(Ljava/lang/String;Ln/m;Ln/m;Ln/b;Z)V

    return-object p0
.end method
