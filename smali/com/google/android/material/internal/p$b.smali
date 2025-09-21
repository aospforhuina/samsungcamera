.class Lcom/google/android/material/internal/p$b;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/internal/p;->a(Landroid/view/View;Lcom/google/android/material/internal/p$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/internal/p$d;

.field final synthetic b:Lcom/google/android/material/internal/p$e;


# direct methods
.method constructor <init>(Lcom/google/android/material/internal/p$d;Lcom/google/android/material/internal/p$e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/internal/p$b;->a:Lcom/google/android/material/internal/p$d;

    iput-object p2, p0, Lcom/google/android/material/internal/p$b;->b:Lcom/google/android/material/internal/p$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/internal/p$b;->a:Lcom/google/android/material/internal/p$d;

    new-instance v1, Lcom/google/android/material/internal/p$e;

    iget-object p0, p0, Lcom/google/android/material/internal/p$b;->b:Lcom/google/android/material/internal/p$e;

    invoke-direct {v1, p0}, Lcom/google/android/material/internal/p$e;-><init>(Lcom/google/android/material/internal/p$e;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/material/internal/p$d;->a(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;Lcom/google/android/material/internal/p$e;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method
