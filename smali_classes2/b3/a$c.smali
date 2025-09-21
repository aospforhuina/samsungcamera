.class final Lb3/a$c;
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
        "Le3/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lb3/a$c;->a:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Le3/a;
    .locals 1

    sget-object v0, Le3/a;->c:Le3/a$a;

    iget-object p0, p0, Lb3/a$c;->a:Landroid/content/Context;

    invoke-virtual {v0, p0}, Le3/a$a;->a(Landroid/content/Context;)Le3/a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lb3/a$c;->a()Le3/a;

    move-result-object p0

    return-object p0
.end method
