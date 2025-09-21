.class Lr/e;
.super Ljava/lang/Object;
.source "BlurEffectParser.java"


# static fields
.field private static final a:Ls/c$a;

.field private static final b:Ls/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ef"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls/c$a;->a([Ljava/lang/String;)Ls/c$a;

    move-result-object v0

    sput-object v0, Lr/e;->a:Ls/c$a;

    const-string v0, "ty"

    const-string v1, "v"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls/c$a;->a([Ljava/lang/String;)Ls/c$a;

    move-result-object v0

    sput-object v0, Lr/e;->b:Ls/c$a;

    return-void
.end method

.method private static a(Ls/c;Lh/h;)Lo/a;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ls/c;->d()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    move v2, v0

    .line 2
    :goto_0
    invoke-virtual {p0}, Ls/c;->k()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 3
    sget-object v3, Lr/e;->b:Ls/c$a;

    invoke-virtual {p0, v3}, Ls/c;->B(Ls/c$a;)I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v4, :cond_1

    .line 4
    invoke-virtual {p0}, Ls/c;->C()V

    .line 5
    invoke-virtual {p0}, Ls/c;->D()V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 6
    new-instance v1, Lo/a;

    invoke-static {p0, p1}, Lr/d;->e(Ls/c;Lh/h;)Ln/b;

    move-result-object v3

    invoke-direct {v1, v3}, Lo/a;-><init>(Ln/b;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {p0}, Ls/c;->D()V

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {p0}, Ls/c;->r()I

    move-result v2

    if-nez v2, :cond_0

    move v2, v4

    goto :goto_0

    .line 9
    :cond_4
    invoke-virtual {p0}, Ls/c;->h()V

    return-object v1
.end method

.method static b(Ls/c;Lh/h;)Lo/a;
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p0}, Ls/c;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2
    sget-object v1, Lr/e;->a:Ls/c$a;

    invoke-virtual {p0, v1}, Ls/c;->B(Ls/c$a;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p0}, Ls/c;->C()V

    .line 4
    invoke-virtual {p0}, Ls/c;->D()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ls/c;->b()V

    .line 6
    :cond_1
    :goto_1
    invoke-virtual {p0}, Ls/c;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-static {p0, p1}, Lr/e;->a(Ls/c;Lh/h;)Lo/a;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v0, v1

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p0}, Ls/c;->f()V

    goto :goto_0

    :cond_3
    return-object v0
.end method
