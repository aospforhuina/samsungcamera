.class public Lcom/sec/android/app/camera/widget/a;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "CenterFocusRecyclerView.java"


# instance fields
.field private final mSeekBarAccessibilityDelegate:Lcom/sec/android/app/camera/widget/l0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Lcom/sec/android/app/camera/widget/l0;

    invoke-direct {p1}, Lcom/sec/android/app/camera/widget/l0;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/a;->mSeekBarAccessibilityDelegate:Lcom/sec/android/app/camera/widget/l0;

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/a;->initializeAccessibility()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    new-instance p1, Lcom/sec/android/app/camera/widget/l0;

    invoke-direct {p1}, Lcom/sec/android/app/camera/widget/l0;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/a;->mSeekBarAccessibilityDelegate:Lcom/sec/android/app/camera/widget/l0;

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/a;->initializeAccessibility()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    new-instance p1, Lcom/sec/android/app/camera/widget/l0;

    invoke-direct {p1}, Lcom/sec/android/app/camera/widget/l0;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/widget/a;->mSeekBarAccessibilityDelegate:Lcom/sec/android/app/camera/widget/l0;

    .line 9
    invoke-direct {p0}, Lcom/sec/android/app/camera/widget/a;->initializeAccessibility()V

    return-void
.end method

.method private initializeAccessibility()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/widget/a;->mSeekBarAccessibilityDelegate:Lcom/sec/android/app/camera/widget/l0;

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method


# virtual methods
.method public setAccessibilityScrollActionListener(Lcom/sec/android/app/camera/widget/l0$a;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/widget/a;->mSeekBarAccessibilityDelegate:Lcom/sec/android/app/camera/widget/l0;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/widget/l0;->setAccessibilityScrollActionListener(Lcom/sec/android/app/camera/widget/l0$a;)V

    return-void
.end method
