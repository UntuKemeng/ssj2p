.class public Landroid/filterpacks/imageproc/RedEyeFilter;
.super Landroid/filterfw/core/Filter;
.source "RedEyeFilter.java"


# static fields
.field private static final DEFAULT_RED_INTENSITY:F = 1.3f

.field private static final MIN_RADIUS:F = 10.0f

.field private static final RADIUS_RATIO:F = 0.06f


# instance fields
.field private final mCanvas:Landroid/graphics/Canvas;

.field private mCenters:[F
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "centers"
    .end annotation
.end field

.field private mHeight:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mProgram:Landroid/filterfw/core/Program;

.field private mRadius:F

.field private mRedEyeBitmap:Landroid/graphics/Bitmap;

.field private mRedEyeFrame:Landroid/filterfw/core/Frame;

.field private final mRedEyeShader:Ljava/lang/String;

.field private mTarget:I

.field private mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mTileSize:I

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mCanvas:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mPaint:Landroid/graphics/Paint;

    iput v1, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mWidth:I

    iput v1, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mHeight:I

    iput v1, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mTarget:I

    const-string/jumbo v0, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float intensity;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  vec4 mask = texture2D(tex_sampler_1, v_texcoord);\n  if (mask.a > 0.0) {\n    float green_blue = color.g + color.b;\n    float red_intensity = color.r / green_blue;\n    if (red_intensity > intensity) {\n      color.r = 0.5 * green_blue;\n    }\n  }\n  gl_FragColor = color;\n}\n"

    iput-object v0, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mRedEyeShader:Ljava/lang/String;

    return-void
.end method

.method private createRedEyeFrame(Landroid/filterfw/core/FilterContext;)V
    .locals 11
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const/4 v10, 0x3

    iget v5, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mWidth:I

    div-int/lit8 v1, v5, 0x2

    .local v1, "bitmapWidth":I
    iget v5, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mHeight:I

    div-int/lit8 v0, v5, 0x2

    .local v0, "bitmapHeight":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .local v4, "redEyeBitmap":Landroid/graphics/Bitmap;
    iget-object v5, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v4}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v5, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mPaint:Landroid/graphics/Paint;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v5, 0x41200000    # 10.0f

    const v6, 0x3d75c28f    # 0.06f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mRadius:F

    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mCenters:[F

    array-length v5, v5

    if-ge v3, v5, :cond_0

    iget-object v5, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mCanvas:Landroid/graphics/Canvas;

    iget-object v6, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mCenters:[F

    aget v6, v6, v3

    int-to-float v7, v1

    mul-float/2addr v6, v7

    iget-object v7, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mCenters:[F

    add-int/lit8 v8, v3, 0x1

    aget v7, v7, v8

    int-to-float v8, v0

    mul-float/2addr v7, v8

    iget v8, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mRadius:F

    iget-object v9, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    invoke-static {v1, v0, v10, v10}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v2

    .local v2, "format":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v5

    iput-object v5, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mRedEyeFrame:Landroid/filterfw/core/Frame;

    iget-object v5, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mRedEyeFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v5, v4}, Landroid/filterfw/core/Frame;->setBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method private updateProgramParams()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mCenters:[F

    array-length v0, v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The size of center array must be even."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    iget-object v0, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/filterpacks/imageproc/RedEyeFilter;->updateProgramParams()V

    :cond_0
    return-void
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .prologue
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    .prologue
    packed-switch p2, :pswitch_data_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Filter RedEye does not support frames of target "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    new-instance v0, Landroid/filterfw/core/ShaderProgram;

    const-string/jumbo v1, "precision mediump float;\nuniform sampler2D tex_sampler_0;\nuniform sampler2D tex_sampler_1;\nuniform float intensity;\nvarying vec2 v_texcoord;\nvoid main() {\n  vec4 color = texture2D(tex_sampler_0, v_texcoord);\n  vec4 mask = texture2D(tex_sampler_1, v_texcoord);\n  if (mask.a > 0.0) {\n    float green_blue = color.g + color.b;\n    float red_intensity = color.r / green_blue;\n    if (red_intensity > intensity) {\n      color.r = 0.5 * green_blue;\n    }\n  }\n  gl_FragColor = color;\n}\n"

    invoke-direct {v0, p1, v1}, Landroid/filterfw/core/ShaderProgram;-><init>(Landroid/filterfw/core/FilterContext;Ljava/lang/String;)V

    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    iput-object v0, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mProgram:Landroid/filterfw/core/Program;

    iget-object v1, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mProgram:Landroid/filterfw/core/Program;

    const-string/jumbo v2, "intensity"

    const v3, 0x3fa66666    # 1.3f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/Program;->setHostValue(Ljava/lang/String;Ljava/lang/Object;)V

    iput p2, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mTarget:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 6
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .prologue
    const-string/jumbo v4, "image"

    invoke-virtual {p0, v4}, Landroid/filterpacks/imageproc/RedEyeFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v1

    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v3

    .local v3, "output":Landroid/filterfw/core/Frame;
    iget-object v4, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    iget v5, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mTarget:I

    if-eq v4, v5, :cond_1

    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    invoke-virtual {p0, p1, v4}, Landroid/filterpacks/imageproc/RedEyeFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v4

    iget v5, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mWidth:I

    if-ne v4, v5, :cond_2

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v4

    iget v5, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mHeight:I

    if-eq v4, v5, :cond_3

    :cond_2
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v4

    iput v4, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mWidth:I

    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v4

    iput v4, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mHeight:I

    :cond_3
    invoke-direct {p0, p1}, Landroid/filterpacks/imageproc/RedEyeFilter;->createRedEyeFrame(Landroid/filterfw/core/FilterContext;)V

    const/4 v4, 0x2

    new-array v2, v4, [Landroid/filterfw/core/Frame;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mRedEyeFrame:Landroid/filterfw/core/Frame;

    aput-object v5, v2, v4

    .local v2, "inputs":[Landroid/filterfw/core/Frame;
    iget-object v4, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v4, v2, v3}, Landroid/filterfw/core/Program;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    const-string/jumbo v4, "image"

    invoke-virtual {p0, v4, v3}, Landroid/filterpacks/imageproc/RedEyeFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    iget-object v4, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mRedEyeFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    const/4 v4, 0x0

    iput-object v4, p0, Landroid/filterpacks/imageproc/RedEyeFilter;->mRedEyeFrame:Landroid/filterfw/core/Frame;

    return-void
.end method

.method public setupPorts()V
    .locals 2

    .prologue
    const-string/jumbo v0, "image"

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/RedEyeFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    const-string/jumbo v0, "image"

    const-string/jumbo v1, "image"

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/RedEyeFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
