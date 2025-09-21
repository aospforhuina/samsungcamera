.class Lq2/n$t;
.super Ln2/w;
.source "TypeAdapters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq2/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln2/w<",
        "Ln2/k;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ln2/w;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic b(Lu2/a;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lq2/n$t;->e(Lu2/a;)Ln2/k;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic d(Lu2/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ln2/k;

    invoke-virtual {p0, p1, p2}, Lq2/n$t;->f(Lu2/c;Ln2/k;)V

    return-void
.end method

.method public e(Lu2/a;)Ln2/k;
    .locals 3

    .line 1
    instance-of v0, p1, Lq2/f;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lq2/f;

    invoke-virtual {p1}, Lq2/f;->Y()Ln2/k;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Lq2/n$b0;->a:[I

    invoke-virtual {p1}, Lu2/a;->L()Lu2/b;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 5
    :pswitch_0
    new-instance v0, Ln2/n;

    invoke-direct {v0}, Ln2/n;-><init>()V

    .line 6
    invoke-virtual {p1}, Lu2/a;->b()V

    .line 7
    :goto_0
    invoke-virtual {p1}, Lu2/a;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p1}, Lu2/a;->F()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lq2/n$t;->e(Lu2/a;)Ln2/k;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ln2/n;->i(Ljava/lang/String;Ln2/k;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p1}, Lu2/a;->o()V

    return-object v0

    .line 10
    :pswitch_1
    new-instance v0, Ln2/h;

    invoke-direct {v0}, Ln2/h;-><init>()V

    .line 11
    invoke-virtual {p1}, Lu2/a;->a()V

    .line 12
    :goto_1
    invoke-virtual {p1}, Lu2/a;->u()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 13
    invoke-virtual {p0, p1}, Lq2/n$t;->e(Lu2/a;)Ln2/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Ln2/h;->i(Ln2/k;)V

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {p1}, Lu2/a;->k()V

    return-object v0

    .line 15
    :pswitch_2
    invoke-virtual {p1}, Lu2/a;->H()V

    .line 16
    sget-object p0, Ln2/m;->a:Ln2/m;

    return-object p0

    .line 17
    :pswitch_3
    new-instance p0, Ln2/p;

    invoke-virtual {p1}, Lu2/a;->B()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-direct {p0, p1}, Ln2/p;-><init>(Ljava/lang/Boolean;)V

    return-object p0

    .line 18
    :pswitch_4
    new-instance p0, Ln2/p;

    invoke-virtual {p1}, Lu2/a;->J()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ln2/p;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 19
    :pswitch_5
    invoke-virtual {p1}, Lu2/a;->J()Ljava/lang/String;

    move-result-object p0

    .line 20
    new-instance p1, Ln2/p;

    new-instance v0, Lp2/g;

    invoke-direct {v0, p0}, Lp2/g;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ln2/p;-><init>(Ljava/lang/Number;)V

    return-object p1

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

.method public f(Lu2/c;Ln2/k;)V
    .locals 2

    if-eqz p2, :cond_8

    .line 1
    invoke-virtual {p2}, Ln2/k;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-virtual {p2}, Ln2/k;->h()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p2}, Ln2/k;->d()Ln2/p;

    move-result-object p0

    .line 4
    invoke-virtual {p0}, Ln2/p;->p()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    invoke-virtual {p0}, Ln2/p;->l()Ljava/lang/Number;

    move-result-object p0

    invoke-virtual {p1, p0}, Lu2/c;->M(Ljava/lang/Number;)Lu2/c;

    goto/16 :goto_3

    .line 6
    :cond_1
    invoke-virtual {p0}, Ln2/p;->n()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p0}, Ln2/p;->i()Z

    move-result p0

    invoke-virtual {p1, p0}, Lu2/c;->O(Z)Lu2/c;

    goto/16 :goto_3

    .line 8
    :cond_2
    invoke-virtual {p0}, Ln2/p;->m()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lu2/c;->N(Ljava/lang/String;)Lu2/c;

    goto/16 :goto_3

    .line 9
    :cond_3
    invoke-virtual {p2}, Ln2/k;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {p1}, Lu2/c;->d()Lu2/c;

    .line 11
    invoke-virtual {p2}, Ln2/k;->b()Ln2/h;

    move-result-object p2

    invoke-virtual {p2}, Ln2/h;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln2/k;

    .line 12
    invoke-virtual {p0, p1, v0}, Lq2/n$t;->f(Lu2/c;Ln2/k;)V

    goto :goto_0

    .line 13
    :cond_4
    invoke-virtual {p1}, Lu2/c;->k()Lu2/c;

    goto :goto_3

    .line 14
    :cond_5
    invoke-virtual {p2}, Ln2/k;->g()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 15
    invoke-virtual {p1}, Lu2/c;->f()Lu2/c;

    .line 16
    invoke-virtual {p2}, Ln2/k;->c()Ln2/n;

    move-result-object p2

    invoke-virtual {p2}, Ln2/n;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 17
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lu2/c;->y(Ljava/lang/String;)Lu2/c;

    .line 18
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln2/k;

    invoke-virtual {p0, p1, v0}, Lq2/n$t;->f(Lu2/c;Ln2/k;)V

    goto :goto_1

    .line 19
    :cond_6
    invoke-virtual {p1}, Lu2/c;->o()Lu2/c;

    goto :goto_3

    .line 20
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t write "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 21
    :cond_8
    :goto_2
    invoke-virtual {p1}, Lu2/c;->A()Lu2/c;

    :goto_3
    return-void
.end method
