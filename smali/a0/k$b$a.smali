.class La0/k$b$a;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lv0/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La0/k$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv0/a$d<",
        "La0/l<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:La0/k$b;


# direct methods
.method constructor <init>(La0/k$b;)V
    .locals 0

    iput-object p1, p0, La0/k$b$a;->a:La0/k$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, La0/k$b$a;->b()La0/l;

    move-result-object p0

    return-object p0
.end method

.method public b()La0/l;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La0/l<",
            "*>;"
        }
    .end annotation

    new-instance v8, La0/l;

    iget-object p0, p0, La0/k$b$a;->a:La0/k$b;

    iget-object v1, p0, La0/k$b;->a:Ld0/a;

    iget-object v2, p0, La0/k$b;->b:Ld0/a;

    iget-object v3, p0, La0/k$b;->c:Ld0/a;

    iget-object v4, p0, La0/k$b;->d:Ld0/a;

    iget-object v5, p0, La0/k$b;->e:La0/m;

    iget-object v6, p0, La0/k$b;->f:La0/p$a;

    iget-object v7, p0, La0/k$b;->g:Landroidx/core/util/Pools$Pool;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, La0/l;-><init>(Ld0/a;Ld0/a;Ld0/a;Ld0/a;La0/m;La0/p$a;Landroidx/core/util/Pools$Pool;)V

    return-object v8
.end method
