.class public interface abstract Lcom/sec/android/app/camera/cropper/util/CropConstants;
.super Ljava/lang/Object;
.source "CropConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/cropper/util/CropConstants$RectHandleKey;,
        Lcom/sec/android/app/camera/cropper/util/CropConstants$PolygonType;,
        Lcom/sec/android/app/camera/cropper/util/CropConstants$PathType;,
        Lcom/sec/android/app/camera/cropper/util/CropConstants$Direction;
    }
.end annotation


# static fields
.field public static final AUTHORITY_SUFFIX:Ljava/lang/String; = ".FileProvider"

.field public static final BIXBY_VISION_LAUNCH_MODE_VALUE:I = 0x12

.field public static final BIXBY_VISION_START_MODE_VALUE:I = 0x4

.field public static final BIXBY_VISION_TEMP_IMAGE_NAME:Ljava/lang/String; = "bixby_vision_temp_image"

.field public static final CROP_IMAGE_FORMAT:Ljava/lang/String; = ".jpg"

.field public static final CROP_MAXIMUM_RATIO:F = 2.3333333f

.field public static final CROP_MODE_DOCUMENT_SCAN:I = 0x1

.field public static final CROP_MODE_MY_FILTER:I = 0x0

.field public static final DEFAULT_CROP_MIN_SIZE:I = 0x12c

.field public static final DIVIDED_LINE_SEGMENT_COUNT:I = 0xc8

.field public static final DOCUMENT_SCAN_ANIMATION_DURATION:I = 0x190

.field public static final DOCUMENT_SCAN_HANDLER_START_ANIMATION_DURATION:I = 0x12c

.field public static final DOCUMENT_SCAN_MOVE_ANIMATION_END_RATIO:F = 2.2f

.field public static final DOCUMENT_SCAN_MOVE_ANIMATION_START_RATIO:F = 1.0f

.field public static final DOCUMENT_SCAN_POINT_IMAGE_MOVE_ANIMATION_DURATION:I = 0xfa

.field public static final EDGE_TOUCHED_RANGE:F = 50.0f

.field public static final EXTRACT_TEXT_SELECT_GUIDE_ANIMATION_DURATION:I = 0xc8

.field public static final EXTRA_BIXBY_VISION_IMAGE_URI:Ljava/lang/String; = "IMAGE_URI"

.field public static final EXTRA_BIXBY_VISION_LAUNCH_MODE:Ljava/lang/String; = "LAUNCH_MODE"

.field public static final EXTRA_BIXBY_VISION_START_MODE:Ljava/lang/String; = "START_MODE"

.field public static final EXTRA_BOTTOM_GUIDE_LINE_PERCENT:Ljava/lang/String; = "bottomGuideLinePercent"

.field public static final EXTRA_CAMERA_PREVIEW_RECT:Ljava/lang/String; = "cameraPreviewRect"

.field public static final EXTRA_CONVERT_COORDINATE_REQUIRED:Ljava/lang/String; = "convertCoordinateRequired"

.field public static final EXTRA_CROP_COORDINATE:Ljava/lang/String; = "cropCoordinate"

.field public static final EXTRA_CROP_MODE:Ljava/lang/String; = "cropMode"

.field public static final EXTRA_CROP_VIEW_USE_THUMBNAIL:Ljava/lang/String; = "cropViewUseThumbnail"

.field public static final EXTRA_EXTERNAL_SD_STORAGE_PATH:Ljava/lang/String; = "externalSDStoragePath"

.field public static final EXTRA_HEIF_ENABLED:Ljava/lang/String; = "heifEnabled"

.field public static final EXTRA_IMAGE_PATH:Ljava/lang/String; = "imagePath"

.field public static final EXTRA_MIN_CROP_SIZE:Ljava/lang/String; = "minCropSize"

.field public static final EXTRA_NON_DESTRUCTION:Ljava/lang/String; = "nonDestruction"

.field public static final EXTRA_OBJECT_REMOVAL_ENABLED:Ljava/lang/String; = "objectRemovalEnabled"

.field public static final EXTRA_PRO_RAW_ONLY_PICTURE_FORMAT:Ljava/lang/String; = "proRawOnlyPictureFormat"

.field public static final EXTRA_QUICK_SETTING_GUIDE_LINE_PERCENT:Ljava/lang/String; = "quickSettingGuideLinePercent"

.field public static final EXTRA_RESIZED_IMAGE_HEIGHT:Ljava/lang/String; = "resizedImageHeight"

.field public static final EXTRA_RESIZED_IMAGE_WIDTH:Ljava/lang/String; = "resizedImageWidth"

.field public static final EXTRA_SAVED_INTENT:Ljava/lang/String; = "savedIntent"

.field public static final EXTRA_SAVING_DIR:Ljava/lang/String; = "savingDir"

.field public static final EXTRA_SECURE_CAMERA_STATE:Ljava/lang/String; = "isSecure"

.field public static final EXTRA_SUPPORT_EXTRACT_TEXT:Ljava/lang/String; = "supportExtractText"

.field public static final EXTRA_SUPPORT_SCAN_ANIMATION:Ljava/lang/String; = "supportScanAnimation"

.field public static final EXTRA_TARGET_SCALE_RATIO:Ljava/lang/String; = "targetScaleRatio"

.field public static final EXTRA_TOP_GUIDE_LINE_PERCENT:Ljava/lang/String; = "topGuideLinePercent"

.field public static final EXTRA_URI:Ljava/lang/String; = "uri"

.field public static final HIDDEN_FILE_DIRECTORY:Ljava/lang/String;

.field public static final INTENT_VISION_INTELLIGENCE:Ljava/lang/String; = "samsung.intentfilter.visionintelligence.image"

.field public static final MIME_TYPE:Ljava/lang/String; = "MIME_TYPE"

.field public static final MIME_TYPE_JPEG:Ljava/lang/String; = "image/jpeg"

.field public static final NON_DESTRUCTION_URI:Landroid/net/Uri;

.field public static final ORIENTATION_0:I = 0x0

.field public static final ORIENTATION_180:I = 0xb4

.field public static final ORIENTATION_270:I = 0x10e

.field public static final ORIENTATION_90:I = 0x5a

.field public static final PACKAGE_NAME_VISION_INTELLIGENCE:Ljava/lang/String; = "com.samsung.android.visionintelligence"

.field public static final POINT_TOUCHED_RANGE:F = 50.0f

.field public static final PREF_KEY_EXTRACT_MODE_NEW_BADGE:Ljava/lang/String; = "pref_extract_mode_new_badge"

.field public static final PREF_KEY_SAVE_PREFERENCE_FOR_STATUS_MODE:Ljava/lang/String; = "pref_save_preference_for_status_mode"

.field public static final REQUEST_BIXBY_VISION:I = 0x3e8

.field public static final RESULT_ERROR:I = 0x64

.field public static final SCREEN_OFF_INTENT_PRIORITY:I = 0x3e7

.field public static final SEC_FLOATING_FEATURE_OCR_ENGINE_UNSUPPORT:Ljava/lang/String; = "SEC_FLOATING_FEATURE_CAMERA_CONFIG_OCR_ENGINE_UNSUPPORT"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://secmedia/nondestruction"

    .line 1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/cropper/util/CropConstants;->NON_DESTRUCTION_URI:Landroid/net/Uri;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/sec/android/app/camera/cropper/util/PathUtil;->getRootDirectoryPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/photoeditor/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/app/camera/cropper/util/CropConstants;->HIDDEN_FILE_DIRECTORY:Ljava/lang/String;

    return-void
.end method
