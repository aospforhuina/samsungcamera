.class final Lb3/a$h;
.super Lkotlin/jvm/internal/m;
.source "DeepSky.kt"

# interfaces
.implements Lu6/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb3/a;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/m;",
        "Lu6/a<",
        "Ln3/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lb3/a$h;->a:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ln3/a;
    .locals 3

    .line 1
    new-instance v0, Ln3/a;

    .line 2
    sget-object v1, Lc3/c;->a:Lc3/c;

    iget-object v2, p0, Lb3/a$h;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lc3/c;->a(Landroid/content/Context;)Lc3/a;

    move-result-object v2

    .line 3
    iget-object p0, p0, Lb3/a$h;->a:Landroid/content/Context;

    invoke-virtual {v1, p0}, Lc3/c;->b(Landroid/content/Context;)Lc3/d;

    move-result-object p0

    .line 4
    invoke-direct {v0, v2, p0}, Ln3/a;-><init>(Lc3/a;Lc3/d;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lb3/a$h;->a()Ln3/a;

    move-result-object p0

    return-object p0
.end method
