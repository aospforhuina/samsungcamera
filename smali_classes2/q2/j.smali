.class public final Lq2/j;
.super Ln2/w;
.source "ObjectTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln2/w<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Ln2/x;


# instance fields
.field private final a:Ln2/e;

.field private final b:Ln2/v;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ln2/u;->a:Ln2/u;

    invoke-static {v0}, Lq2/j;->f(Ln2/v;)Ln2/x;

    move-result-object v0

    sput-object v0, Lq2/j;->c:Ln2/x;

    return-void
.end method

.method private constructor <init>(Ln2/e;Ln2/v;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ln2/w;-><init>()V

    .line 3
    iput-object p1, p0, Lq2/j;->a:Ln2/e;

    .line 4
    iput-object p2, p0, Lq2/j;->b:Ln2/v;

    return-void
.end method

.method synthetic constructor <init>(Ln2/e;Ln2/v;Lq2/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lq2/j;-><init>(Ln2/e;Ln2/v;)V

    return-void
.end method

.method public static e(Ln2/v;)Ln2/x;
    .locals 1

    .line 1
    sget-object v0, Ln2/u;->a:Ln2/u;

    if-ne p0, v0, :cond_0

    .line 2
    sget-object p0, Lq2/j;->c:Ln2/x;

    return-object p0

    .line 3
    :cond_0
    invoke-static {p0}, Lq2/j;->f(Ln2/v;)Ln2/x;

    move-result-object p0

    return-object p0
.end method

.method private static f(Ln2/v;)Ln2/x;
    .locals 1

    new-instance v0, Lq2/j$a;

    invoke-direct {v0, p0}, Lq2/j$a;-><init>(Ln2/v;)V

    return-object v0
.end method


# virtual methods
.method public b(Lu2/a;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lu2/a;->L()Lu2/b;

    move-result-object v0

    .line 2
    sget-object v1, Lq2/j$b;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    .line 4
    :pswitch_0
    invoke-virtual {p1}, Lu2/a;->H()V

    const/4 p0, 0x0

    return-object p0

    .line 5
    :pswitch_1
    invoke-virtual {p1}, Lu2/a;->B()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 6
    :pswitch_2
    iget-object p0, p0, Lq2/j;->b:Ln2/v;

    invoke-interface {p0, p1}, Ln2/v;->a(Lu2/a;)Ljava/lang/Number;

    move-result-object p0

    return-object p0

    .line 7
    :pswitch_3
    invoke-virtual {p1}, Lu2/a;->J()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :pswitch_4
    new-instance v0, Lp2/h;

    invoke-direct {v0}, Lp2/h;-><init>()V

    .line 9
    invoke-virtual {p1}, Lu2/a;->b()V

    .line 10
    :goto_0
    invoke-virtual {p1}, Lu2/a;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {p1}, Lu2/a;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lq2/j;->b(Lu2/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lu2/a;->o()V

    return-object v0

    .line 13
    :pswitch_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-virtual {p1}, Lu2/a;->a()V

    .line 15
    :goto_1
    invoke-virtual {p1}, Lu2/a;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16
    invoke-virtual {p0, p1}, Lq2/j;->b(Lu2/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual {p1}, Lu2/a;->k()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public d(Lu2/c;Ljava/lang/Object;)V
    .locals 1

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p1}, Lu2/c;->A()Lu2/c;

    return-void

    .line 2
    :cond_0
    iget-object p0, p0, Lq2/j;->a:Ln2/e;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ln2/e;->l(Ljava/lang/Class;)Ln2/w;

    move-result-object p0

    .line 3
    instance-of v0, p0, Lq2/j;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lu2/c;->f()Lu2/c;

    .line 5
    invoke-virtual {p1}, Lu2/c;->o()Lu2/c;

    return-void

    .line 6
    :cond_1
    invoke-virtual {p0, p1, p2}, Ln2/w;->d(Lu2/c;Ljava/lang/Object;)V

    return-void
.end method
