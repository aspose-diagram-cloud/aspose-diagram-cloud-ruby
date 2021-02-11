![](https://img.shields.io/badge/api-v3.0-lightgrey) ![Gem](https://img.shields.io/gem/v/aspose_diagram_cloud) [![GitHub license](https://img.shields.io/github/license/aspose-diagram-cloud/aspose-Diagram-cloud-ruby)](https://github.com/aspose-diagram-cloud/aspose-Diagram-cloud-ruby/blob/master/LICENSE)

# Ruby Cloud REST API for Visio Processing

[Aspose.Diagram Cloud SDK for Ruby](https://products.aspose.cloud/diagram/ruby) helps you develop Visio file manipulation applications with the help of Aspose.Diagram REST API. It allows your applications to work with Microsoft Visio Object Model in order to create the diagrams from scratch or convert diagrams to popular formats including PDF, HTML, images and other Visio formats.

## Visio Processing Features

- [Convert diagrams](https://docs.aspose.cloud/diagram/convert-diagram-file-to-another-format/) to 20+ different file formats.
- Retrieve document information of a Visio diagram.
- Programmatically create a new Microsoft Visio diagram file.
- Convert Visio flow-charts to other supported formats.
- Upload your business-oriented Visio diagrams to cloud storage.
- Export Visio files to raster images, fixed-layout, and HTML formats.

Please refer to [Developer's Guide](https://docs.aspose.cloud/diagram/developer-guide/) to see what else you can achieve.
## Read & Write Visio Formats

**Microsoft Visio:** VSDX, VSX, VTX, VDX, VSSX, VSTX, VSDM, VSSM, VSTM

## Save Visio As

**Fixed Layout:** PDF, XPS
**Images:** JPEG, PNG, BMP, TIFF, SVG, EMF
**Web:** HTML
**Other:** XAML, SWF

## Read Visio Formats

**Microsoft Visio:** VDW, VSD, VSS, VST

Please refer to [Developer's Guide](https://docs.aspose.cloud/diagram/developer-guide/) to see what else you can achieve.

## New Features in Version 20.3

- Added support to:
  - Set page settings
  - Add an empty page
  - Get pages information
- Added support to draw following objects on a page:
  - Polyline
  - Line
  - Ellipse

For the detailed notes, please visit [Aspose.Diagram Cloud 20.3 Release Notes](https://docs.aspose.cloud/diagram/aspose-diagram-cloud-20-3-release-notes/).

## Get Started with Aspose.Diagram Cloud SDK for Ruby

All you need to do is create an account at [Aspose for Cloud](https://dashboard.aspose.cloud/) and get your application information. Next, execute `gem install aspose_diagram_cloud` to get the package from [RubyGems](https://rubygems.org/gems/aspose_diagram_cloud).
## Create a New VDX Format Diagram in Ruby

```ruby
    # Get your ClientId and ClientSecret from https://dashboard.aspose.cloud (free registration required).

	configuration = AsposeDiagramCloud::Configuration.new
	configuration.app_sid = "MY_CLIENT_ID"
	configuration.app_key = "MY_CLIENT_SECRET"
	configuration.grant_type = "client_credentials"

	api = AsposeDiagramCloud::DiagramApi.new(configuration)

	name = "sample.vdx"
	folder = "my_output"
	is_overwrite = true
	result = api.create_new(name, {:name=>name, :is_overwrite=>is_overwrite, :folder=>folder})
```

## Aspose.Diagram Cloud SDKs in Popular Languages

| .NET | Java | PHP | Python | Ruby | Node.js | Android | Perl | Swift |
|---|---|---|---|---|---|---|---|---|
| [GitHub](https://github.com/aspose-diagram-cloud/aspose-diagram-cloud-dotnet) | [GitHub](https://github.com/aspose-diagram-cloud/aspose-diagram-cloud-java) | [GitHub](https://github.com/aspose-diagram-cloud/aspose-diagram-cloud-php) | [GitHub](https://github.com/aspose-diagram-cloud/aspose-diagram-cloud-python) | [GitHub](https://github.com/aspose-diagram-cloud/aspose-diagram-cloud-ruby)  | [GitHub](https://github.com/aspose-diagram-cloud/aspose-diagram-cloud-node) | [GitHub](https://github.com/aspose-diagram-cloud/aspose-diagram-cloud-android) | [GitHub](https://github.com/aspose-diagram-cloud/aspose-diagram-cloud-perl) | [GitHub](https://github.com/aspose-diagram-cloud/aspose-diagram-cloud-swift) |
| [NuGet](https://www.nuget.org/packages/Aspose.Diagram-Cloud/) | [Maven](https://repository.aspose.cloud/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-diagram-cloud) | [Composer](https://packagist.org/packages/aspose/diagram-sdk-php) | [PIP](https://pypi.org/project/asposediagramcloud/) | [GEM](https://rubygems.org/gems/aspose_diagram_cloud)  | [NPM](https://www.npmjs.com/package/asposediagramcloud) | [Maven](https://repository.aspose.cloud/webapp/#/artifacts/browse/tree/General/repo/com/aspose/aspose-diagram-cloud-android) |  [CPAN](https://metacpan.org/release/AsposeDiagramCloud-DiagramApi) | [POD](https://cocoapods.org/pods/AsposeDiagramCloud) |

[Home](https://www.aspose.cloud) | [Product Page](https://products.aspose.cloud/diagram/ruby) | [Documentation](https://docs.aspose.cloud/diagram/) | [Live Demo](https://products.aspose.app/diagram/family) | [API Reference](https://apireference.aspose.cloud/diagram/) | [Code Samples](https://github.com/aspose-diagram-cloud/aspose-diagram-cloud-ruby) | [Blog](https://blog.aspose.cloud/category/diagram/) | [Free Support](https://forum.aspose.cloud/c/diagram) | [Free Trial](https://dashboard.aspose.cloud/)
