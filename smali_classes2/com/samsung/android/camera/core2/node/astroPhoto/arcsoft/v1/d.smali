.class public final synthetic Lcom/samsung/android/camera/core2/node/astroPhoto/arcsoft/v1/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/camera/core2/node/astroPhoto/arcsoft/v1/ArcAstroPhotoNode;

.field public final synthetic b:Lcom/samsung/android/camera/core2/util/ImageInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/camera/core2/node/astroPhoto/arcsoft/v1/ArcAstroPhotoNode;Lcom/samsung/android/camera/core2/util/ImageInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/astroPhoto/arcsoft/v1/d;->a:Lcom/samsung/android/camera/core2/node/astroPhoto/arcsoft/v1/ArcAstroPhotoNode;

    iput-object p2, p0, Lcom/samsung/android/camera/core2/node/astroPhoto/arcsoft/v1/d;->b:Lcom/samsung/android/camera/core2/util/ImageInfo;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/astroPhoto/arcsoft/v1/d;->a:Lcom/samsung/android/camera/core2/node/astroPhoto/arcsoft/v1/ArcAstroPhotoNode;

    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/astroPhoto/arcsoft/v1/d;->b:Lcom/samsung/android/camera/core2/util/ImageInfo;

    check-cast p1, Lcom/samsung/android/camera/core2/util/DirectBuffer;

    invoke-static {v0, p0, p1}, Lcom/samsung/android/camera/core2/node/astroPhoto/arcsoft/v1/ArcAstroPhotoNode;->n(Lcom/samsung/android/camera/core2/node/astroPhoto/arcsoft/v1/ArcAstroPhotoNode;Lcom/samsung/android/camera/core2/util/ImageInfo;Lcom/samsung/android/camera/core2/util/DirectBuffer;)V

    return-void
.end method
