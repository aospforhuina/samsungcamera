.class public final synthetic Lcom/samsung/android/camera/core2/maker/nl;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;

.field public final synthetic b:[[I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;[[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/maker/nl;->a:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;

    iput-object p2, p0, Lcom/samsung/android/camera/core2/maker/nl;->b:[[I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core2/maker/nl;->a:Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/maker/nl;->b:[[I

    check-cast p1, [[I

    invoke-static {v0, p0, p1}, Lcom/samsung/android/camera/core2/maker/SingleBokehPhotoMaker$6;->l(Lcom/samsung/android/camera/core2/processor/ProcessRequest$Sequence;[[I[[I)V

    return-void
.end method
