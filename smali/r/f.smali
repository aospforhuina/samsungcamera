.class Lr/f;
.super Ljava/lang/Object;
.source "CircleShapeParser.java"


# static fields
.field private static final a:Ls/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "nm"

    const-string v1, "p"

    const-string v2, "s"

    const-string v3, "hd"

    const-string v4, "d"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls/c$a;->a([Ljava/lang/String;)Ls/c$a;

    move-result-object v0

    sput-object v0, Lr/f;->a:Ls/c$a;

    return-void
.end method

.method static a(Ls/c;Lh/h;I)Lo/b;
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    const/4 v3, 0x0

    move v8, p2

    move v9, v1

    move-object v5, v3

    move-object v6, v5

    move-object v7, v6

    .line 1
    :goto_1
    invoke-virtual {p0}, Ls/c;->k()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 2
    sget-object p2, Lr/f;->a:Ls/c$a;

    invoke-virtual {p0, p2}, Ls/c;->B(Ls/c$a;)I

    move-result p2

    if-eqz p2, :cond_6

    if-eq p2, v0, :cond_5

    const/4 v3, 0x2

    if-eq p2, v3, :cond_4

    if-eq p2, v2, :cond_3

    const/4 v3, 0x4

    if-eq p2, v3, :cond_1

    .line 3
    invoke-virtual {p0}, Ls/c;->C()V

    .line 4
    invoke-virtual {p0}, Ls/c;->D()V

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {p0}, Ls/c;->r()I

    move-result p2

    if-ne p2, v2, :cond_2

    move v8, v0

    goto :goto_1

    :cond_2
    move v8, v1

    goto :goto_1

    .line 6
    :cond_3
    invoke-virtual {p0}, Ls/c;->o()Z

    move-result v9

    goto :goto_1

    .line 7
    :cond_4
    invoke-static {p0, p1}, Lr/d;->i(Ls/c;Lh/h;)Ln/f;

    move-result-object v7

    goto :goto_1

    .line 8
    :cond_5
    invoke-static {p0, p1}, Lr/a;->b(Ls/c;Lh/h;)Ln/m;

    move-result-object v6

    goto :goto_1

    .line 9
    :cond_6
    invoke-virtual {p0}, Ls/c;->u()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 10
    :cond_7
    new-instance p0, Lo/b;

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lo/b;-><init>(Ljava/lang/String;Ln/m;Ln/f;ZZ)V

    return-object p0
.end method
