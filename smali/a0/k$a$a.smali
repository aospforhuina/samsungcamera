.class La0/k$a$a;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lv0/a$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La0/k$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lv0/a$d<",
        "La0/h<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:La0/k$a;


# direct methods
.method constructor <init>(La0/k$a;)V
    .locals 0

    iput-object p1, p0, La0/k$a$a;->a:La0/k$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, La0/k$a$a;->b()La0/h;

    move-result-object p0

    return-object p0
.end method

.method public b()La0/h;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La0/h<",
            "*>;"
        }
    .end annotation

    new-instance v0, La0/h;

    iget-object p0, p0, La0/k$a$a;->a:La0/k$a;

    iget-object v1, p0, La0/k$a;->a:La0/h$e;

    iget-object p0, p0, La0/k$a;->b:Landroidx/core/util/Pools$Pool;

    invoke-direct {v0, v1, p0}, La0/h;-><init>(La0/h$e;Landroidx/core/util/Pools$Pool;)V

    return-object v0
.end method
