.class final Lb3/a$b;
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
        "Ld3/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lb3/a$b;->a:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ld3/a;
    .locals 2

    .line 1
    new-instance v0, Ld3/a;

    .line 2
    sget-object v1, Lc3/c;->a:Lc3/c;

    iget-object p0, p0, Lb3/a$b;->a:Landroid/content/Context;

    invoke-virtual {v1, p0}, Lc3/c;->a(Landroid/content/Context;)Lc3/a;

    move-result-object p0

    .line 3
    invoke-direct {v0, p0}, Ld3/a;-><init>(Lc3/a;)V

    .line 4
    invoke-virtual {v0}, Ld3/a;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lb3/a$b;->a()Ld3/a;

    move-result-object p0

    return-object p0
.end method
