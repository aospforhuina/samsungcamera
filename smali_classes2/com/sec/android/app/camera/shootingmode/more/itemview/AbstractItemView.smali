.class public abstract Lcom/sec/android/app/camera/shootingmode/more/itemview/AbstractItemView;
.super Landroid/widget/RelativeLayout;
.source "AbstractItemView.java"


# instance fields
.field private mResourceIdSet:Lx5/e$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getResourceIdSet()Lx5/e$b;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/itemview/AbstractItemView;->mResourceIdSet:Lx5/e$b;

    return-object p0
.end method

.method public setResourceIdSet(Lx5/e$b;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/itemview/AbstractItemView;->mResourceIdSet:Lx5/e$b;

    return-void
.end method
