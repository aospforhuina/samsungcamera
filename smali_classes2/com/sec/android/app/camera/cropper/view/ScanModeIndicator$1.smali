.class Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScanModeIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->translateButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator$1;->this$0:Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator$1;->this$0:Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;

    invoke-static {p1}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->access$000(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator$1;->this$0:Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;

    invoke-static {v0}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->access$000(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator$1;->this$0:Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/sec/android/app/camera/cropper/R$color;->scan_mode_indicator_select_font_color:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator$1;->this$0:Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/sec/android/app/camera/cropper/R$color;->scan_mode_indicator_normal_font_color:I

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator$1;->this$0:Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;

    invoke-static {p1}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->access$100(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator$1;->this$0:Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;

    invoke-static {v0}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->access$100(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator$1;->this$0:Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    if-eqz v0, :cond_1

    sget v0, Lcom/sec/android/app/camera/cropper/R$color;->scan_mode_indicator_select_font_color:I

    goto :goto_1

    :cond_1
    sget v0, Lcom/sec/android/app/camera/cropper/R$color;->scan_mode_indicator_normal_font_color:I

    :goto_1
    invoke-virtual {p0, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator$1;->this$0:Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;

    invoke-static {p1}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->access$000(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator$1;->this$0:Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;

    invoke-static {v0}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->access$000(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;)Landroid/widget/TextView;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator$1;->this$0:Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;

    invoke-static {v0}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->access$100(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;)Landroid/widget/TextView;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->access$200(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;I)V

    .line 3
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator$1;->this$0:Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;

    invoke-static {p1}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->access$300(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator$1;->this$0:Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;

    invoke-static {v0}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->access$000(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    const/16 v1, 0x15

    const/16 v2, 0x14

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator$1;->this$0:Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;

    invoke-static {v0}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->access$000(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator$1;->this$0:Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;

    invoke-static {v0}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->access$300(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator$1;->this$0:Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;

    invoke-static {p1}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->access$300(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator$1;->this$0:Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;

    invoke-static {v0}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->access$000(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator$1;->this$0:Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;

    invoke-static {v0}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->access$100(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getX()F

    move-result v0

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator$1;->this$0:Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;

    invoke-static {v1}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->access$400(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setX(F)V

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator$1;->this$0:Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;

    invoke-static {p1}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->access$000(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator$1;->this$0:Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;

    invoke-static {p1}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->access$000(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->semRequestAccessibilityFocus()Z

    goto :goto_3

    .line 10
    :cond_4
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator$1;->this$0:Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;

    invoke-static {p1}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->access$100(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/TextView;->semRequestAccessibilityFocus()Z

    .line 11
    :goto_3
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator$1;->this$0:Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;

    invoke-static {p1}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->access$500(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;)Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator$SelectButtonEventListener;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 12
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator$1;->this$0:Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;

    invoke-static {p1}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->access$500(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;)Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator$SelectButtonEventListener;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator$1;->this$0:Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;

    invoke-static {p0}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;->access$000(Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/TextView;->isSelected()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/sec/android/app/camera/cropper/view/ScanModeIndicator$SelectButtonEventListener;->onTextViewClicked(Z)V

    :cond_5
    return-void
.end method
