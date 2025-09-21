.class public Lo5/t2;
.super Lo5/s2;
.source "MenuSelfieToneMenuBindingImpl.java"

# interfaces
.implements Lr5/a$a;


# static fields
.field private static final y:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

.field private static final z:Landroid/util/SparseIntArray;


# instance fields
.field private final s:Landroid/view/View$OnClickListener;

.field private final t:Landroid/view/View$OnClickListener;

.field private final u:Landroid/view/View$OnClickListener;

.field private final v:Landroid/view/View$OnClickListener;

.field private final w:Landroid/view/View$OnClickListener;

.field private x:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lo5/t2;->z:Landroid/util/SparseIntArray;

    const v1, 0x7f0a04df

    const/4 v2, 0x6

    .line 2
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a00c8

    const/4 v2, 0x7

    .line 3
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0368

    const/16 v2, 0x8

    .line 4
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a04dd

    const/16 v2, 0x9

    .line 5
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a00c3

    const/16 v2, 0xa

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a04cb

    const/16 v2, 0xb

    .line 7
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0a0424

    const/16 v2, 0xc

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3

    .line 1
    sget-object v0, Lo5/t2;->y:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lo5/t2;->z:Landroid/util/SparseIntArray;

    const/16 v2, 0xd

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lo5/t2;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 18

    move-object/from16 v3, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v15, 0x1

    .line 2
    aget-object v4, p3, v15

    check-cast v4, Landroid/widget/ImageButton;

    const/16 v5, 0xa

    aget-object v5, p3, v5

    check-cast v5, Landroid/widget/ImageView;

    const/4 v6, 0x7

    aget-object v6, p3, v6

    check-cast v6, Landroidx/constraintlayout/widget/Guideline;

    const/4 v14, 0x2

    aget-object v7, p3, v14

    check-cast v7, Landroid/widget/TextView;

    const/4 v8, 0x0

    aget-object v8, p3, v8

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v13, 0x3

    aget-object v9, p3, v13

    check-cast v9, Landroid/widget/TextView;

    const/16 v10, 0x8

    aget-object v10, p3, v10

    check-cast v10, Landroidx/constraintlayout/widget/Guideline;

    const/4 v12, 0x5

    aget-object v11, p3, v12

    check-cast v11, Landroid/widget/Button;

    const/16 v16, 0xc

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/SeekBar;

    move-object/from16 v12, v16

    const/16 v16, 0xb

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/TextView;

    move-object/from16 v13, v16

    const/16 v16, 0x9

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/ImageView;

    move-object/from16 v14, v16

    const/16 v16, 0x6

    aget-object v16, p3, v16

    check-cast v16, Landroidx/constraintlayout/widget/Guideline;

    move-object/from16 v15, v16

    const/4 v3, 0x4

    aget-object v16, p3, v3

    check-cast v16, Landroid/widget/TextView;

    const/16 v17, 0x0

    move/from16 v3, v17

    invoke-direct/range {v0 .. v16}, Lo5/s2;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageButton;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/TextView;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/TextView;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/Button;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/ImageView;Landroidx/constraintlayout/widget/Guideline;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lo5/t2;->x:J

    .line 4
    iget-object v0, v2, Lo5/s2;->a:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v2, Lo5/s2;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v2, Lo5/s2;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v2, Lo5/s2;->g:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v2, Lo5/s2;->l:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v2, Lo5/s2;->q:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 10
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 11
    new-instance v0, Lr5/a;

    const/4 v1, 0x4

    invoke-direct {v0, v2, v1}, Lr5/a;-><init>(Lr5/a$a;I)V

    iput-object v0, v2, Lo5/t2;->s:Landroid/view/View$OnClickListener;

    .line 12
    new-instance v0, Lr5/a;

    const/4 v1, 0x5

    invoke-direct {v0, v2, v1}, Lr5/a;-><init>(Lr5/a$a;I)V

    iput-object v0, v2, Lo5/t2;->t:Landroid/view/View$OnClickListener;

    .line 13
    new-instance v0, Lr5/a;

    const/4 v1, 0x2

    invoke-direct {v0, v2, v1}, Lr5/a;-><init>(Lr5/a$a;I)V

    iput-object v0, v2, Lo5/t2;->u:Landroid/view/View$OnClickListener;

    .line 14
    new-instance v0, Lr5/a;

    const/4 v1, 0x3

    invoke-direct {v0, v2, v1}, Lr5/a;-><init>(Lr5/a$a;I)V

    iput-object v0, v2, Lo5/t2;->v:Landroid/view/View$OnClickListener;

    .line 15
    new-instance v0, Lr5/a;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Lr5/a;-><init>(Lr5/a$a;I)V

    iput-object v0, v2, Lo5/t2;->w:Landroid/view/View$OnClickListener;

    .line 16
    invoke-virtual/range {p0 .. p0}, Lo5/t2;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public final c(ILandroid/view/View;)V
    .locals 2

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    const/4 v1, 0x2

    if-eq p1, v1, :cond_6

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p0, p0, Lo5/s2;->r:Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuContract$Presenter;

    if-eqz p0, :cond_1

    move p2, v0

    :cond_1
    if-eqz p2, :cond_a

    .line 2
    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuContract$Presenter;->onSaveButtonClick()V

    goto :goto_0

    .line 3
    :cond_2
    iget-object p0, p0, Lo5/s2;->r:Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuContract$Presenter;

    if-eqz p0, :cond_3

    move p2, v0

    :cond_3
    if-eqz p2, :cond_a

    .line 4
    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuContract$Presenter;->onWarmButtonClick()V

    goto :goto_0

    .line 5
    :cond_4
    iget-object p0, p0, Lo5/s2;->r:Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuContract$Presenter;

    if-eqz p0, :cond_5

    move p2, v0

    :cond_5
    if-eqz p2, :cond_a

    .line 6
    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuContract$Presenter;->onOriginalButtonClick()V

    goto :goto_0

    .line 7
    :cond_6
    iget-object p0, p0, Lo5/s2;->r:Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuContract$Presenter;

    if-eqz p0, :cond_7

    move p2, v0

    :cond_7
    if-eqz p2, :cond_a

    .line 8
    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuContract$Presenter;->onCoolButtonClick()V

    goto :goto_0

    .line 9
    :cond_8
    iget-object p0, p0, Lo5/s2;->r:Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuContract$Presenter;

    if-eqz p0, :cond_9

    move p2, v0

    :cond_9
    if-eqz p2, :cond_a

    .line 10
    invoke-interface {p0}, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuContract$Presenter;->onBackButtonClick()V

    :cond_a
    :goto_0
    return-void
.end method

.method protected executeBindings()V
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lo5/t2;->x:J

    const-wide/16 v2, 0x0

    .line 3
    iput-wide v2, p0, Lo5/t2;->x:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v4, 0x2

    and-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lo5/s2;->a:Landroid/widget/ImageButton;

    iget-object v1, p0, Lo5/t2;->w:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lo5/s2;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lo5/t2;->u:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    iget-object v0, p0, Lo5/s2;->g:Landroid/widget/TextView;

    iget-object v1, p0, Lo5/t2;->v:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lo5/s2;->l:Landroid/widget/Button;

    iget-object v1, p0, Lo5/t2;->t:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    iget-object v0, p0, Lo5/s2;->q:Landroid/widget/TextView;

    iget-object p0, p0, Lo5/t2;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 10
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public f(Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuContract$Presenter;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lo5/s2;->r:Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuContract$Presenter;

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-wide v0, p0, Lo5/t2;->x:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo5/t2;->x:J

    .line 4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x4

    .line 5
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 6
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception p1

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lo5/t2;->x:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 3
    monitor-exit p0

    return v0

    .line 4
    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 1
    monitor-enter p0

    const-wide/16 v0, 0x2

    .line 2
    :try_start_0
    iput-wide v0, p0, Lo5/t2;->x:J

    .line 3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    return-void

    :catchall_0
    move-exception v0

    .line 5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne v0, p1, :cond_0

    check-cast p2, Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuContract$Presenter;

    invoke-virtual {p0, p2}, Lo5/t2;->f(Lcom/sec/android/app/camera/layer/menu/selfietone/SelfieToneMenuContract$Presenter;)V

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
