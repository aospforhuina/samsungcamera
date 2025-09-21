.class public final synthetic Lcom/sec/android/app/camera/setting/v1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter;

.field public final synthetic b:Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter$ItemViewHolder;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter;Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter$ItemViewHolder;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/setting/v1;->a:Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter;

    iput-object p2, p0, Lcom/sec/android/app/camera/setting/v1;->b:Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter$ItemViewHolder;

    iput p3, p0, Lcom/sec/android/app/camera/setting/v1;->c:I

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/setting/v1;->a:Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter;

    iget-object v1, p0, Lcom/sec/android/app/camera/setting/v1;->b:Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter$ItemViewHolder;

    iget p0, p0, Lcom/sec/android/app/camera/setting/v1;->c:I

    invoke-static {v0, v1, p0, p1, p2}, Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter;->a(Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter;Lcom/sec/android/app/camera/setting/HdrOptionActivity$ListVideoHdrAdapter$ItemViewHolder;ILandroid/widget/CompoundButton;Z)V

    return-void
.end method
