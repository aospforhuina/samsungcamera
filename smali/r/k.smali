.class public Lr/k;
.super Ljava/lang/Object;
.source "DropShadowEffectParser.java"


# static fields
.field private static final f:Ls/c$a;

.field private static final g:Ls/c$a;


# instance fields
.field private a:Ln/a;

.field private b:Ln/b;

.field private c:Ln/b;

.field private d:Ln/b;

.field private e:Ln/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "ef"

    .line 1
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls/c$a;->a([Ljava/lang/String;)Ls/c$a;

    move-result-object v0

    sput-object v0, Lr/k;->f:Ls/c$a;

    const-string v0, "nm"

    const-string v1, "v"

    .line 2
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ls/c$a;->a([Ljava/lang/String;)Ls/c$a;

    move-result-object v0

    sput-object v0, Lr/k;->g:Ls/c$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ls/c;Lh/h;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ls/c;->d()V

    const-string v0, ""

    .line 2
    :goto_0
    invoke-virtual {p1}, Ls/c;->k()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3
    sget-object v1, Lr/k;->g:Ls/c$a;

    invoke-virtual {p1, v1}, Ls/c;->B(Ls/c$a;)I

    move-result v1

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 4
    invoke-virtual {p1}, Ls/c;->C()V

    .line 5
    invoke-virtual {p1}, Ls/c;->D()V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x0

    sparse-switch v3, :sswitch_data_0

    :goto_1
    move v2, v1

    goto :goto_2

    :sswitch_0
    const-string v2, "Softness"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    goto :goto_2

    :sswitch_1
    const-string v2, "Shadow Color"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x3

    goto :goto_2

    :sswitch_2
    const-string v2, "Direction"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    goto :goto_2

    :sswitch_3
    const-string v3, "Opacity"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :sswitch_4
    const-string v2, "Distance"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_1

    :cond_4
    move v2, v4

    :cond_5
    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 7
    invoke-virtual {p1}, Ls/c;->D()V

    goto :goto_0

    .line 8
    :pswitch_0
    invoke-static {p1, p2}, Lr/d;->e(Ls/c;Lh/h;)Ln/b;

    move-result-object v1

    iput-object v1, p0, Lr/k;->e:Ln/b;

    goto :goto_0

    .line 9
    :pswitch_1
    invoke-static {p1, p2}, Lr/d;->c(Ls/c;Lh/h;)Ln/a;

    move-result-object v1

    iput-object v1, p0, Lr/k;->a:Ln/a;

    goto :goto_0

    .line 10
    :pswitch_2
    invoke-static {p1, p2, v4}, Lr/d;->f(Ls/c;Lh/h;Z)Ln/b;

    move-result-object v1

    iput-object v1, p0, Lr/k;->c:Ln/b;

    goto :goto_0

    .line 11
    :pswitch_3
    invoke-static {p1, p2, v4}, Lr/d;->f(Ls/c;Lh/h;Z)Ln/b;

    move-result-object v1

    iput-object v1, p0, Lr/k;->b:Ln/b;

    goto :goto_0

    .line 12
    :pswitch_4
    invoke-static {p1, p2}, Lr/d;->e(Ls/c;Lh/h;)Ln/b;

    move-result-object v1

    iput-object v1, p0, Lr/k;->d:Ln/b;

    goto/16 :goto_0

    .line 13
    :cond_6
    invoke-virtual {p1}, Ls/c;->u()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 14
    :cond_7
    invoke-virtual {p1}, Ls/c;->h()V

    return-void

    :sswitch_data_0
    .sparse-switch
        0x150bf015 -> :sswitch_4
        0x17b08feb -> :sswitch_3
        0x3e12275f -> :sswitch_2
        0x5237c863 -> :sswitch_1
        0x5279bda1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method b(Ls/c;Lh/h;)Lr/j;
    .locals 7

    .line 1
    :goto_0
    invoke-virtual {p1}, Ls/c;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Lr/k;->f:Ls/c$a;

    invoke-virtual {p1, v0}, Ls/c;->B(Ls/c$a;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Ls/c;->C()V

    .line 4
    invoke-virtual {p1}, Ls/c;->D()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ls/c;->b()V

    .line 6
    :goto_1
    invoke-virtual {p1}, Ls/c;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-direct {p0, p1, p2}, Lr/k;->a(Ls/c;Lh/h;)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p1}, Ls/c;->f()V

    goto :goto_0

    .line 9
    :cond_2
    iget-object v2, p0, Lr/k;->a:Ln/a;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lr/k;->b:Ln/b;

    if-eqz v3, :cond_3

    iget-object v4, p0, Lr/k;->c:Ln/b;

    if-eqz v4, :cond_3

    iget-object v5, p0, Lr/k;->d:Ln/b;

    if-eqz v5, :cond_3

    iget-object v6, p0, Lr/k;->e:Ln/b;

    if-eqz v6, :cond_3

    .line 10
    new-instance p0, Lr/j;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lr/j;-><init>(Ln/a;Ln/b;Ln/b;Ln/b;Ln/b;)V

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method
