.class Lcom/google/android/material/navigation/c$c;
.super Lcom/google/android/material/navigation/a;
.source "NavigationBarMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/navigation/c;->l(I)Lcom/google/android/material/navigation/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic R:I

.field final synthetic S:Lcom/google/android/material/navigation/c;


# direct methods
.method constructor <init>(Lcom/google/android/material/navigation/c;Landroid/content/Context;II)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/navigation/c$c;->S:Lcom/google/android/material/navigation/c;

    iput p4, p0, Lcom/google/android/material/navigation/c$c;->R:I

    invoke-direct {p0, p2, p3}, Lcom/google/android/material/navigation/a;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected getItemLayoutResId()I
    .locals 1

    .line 1
    iget p0, p0, Lcom/google/android/material/navigation/c$c;->R:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 2
    sget p0, Lq1/h;->s:I

    return p0

    .line 3
    :cond_0
    sget p0, Lq1/h;->t:I

    return p0

    .line 4
    :cond_1
    sget p0, Lq1/h;->s:I

    return p0

    .line 5
    :cond_2
    sget p0, Lq1/h;->s:I

    return p0
.end method
